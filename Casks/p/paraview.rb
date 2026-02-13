cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.1.0,RC1-MPI-OSX11.0-Python3.12"
    sha256 "f8c6b7d552b41362db07098cc3e3296b42c7cf2f06d29ca77833b18efdac8542"
  end
  on_intel do
    version "6.1.0,RC1-MPI-OSX10.15-Python3.12"
    sha256 "c675db6e3dca60b5b574111ccb0c4a8a21c4fa61c1d1f50cf419862efe373ac2"
  end

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.csv.first.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      user_agent: :fake
  name "ParaView"
  desc "Data analysis and visualization application"
  homepage "https://www.paraview.org/"

  livecheck do
    url "https://www.paraview.org/files/listing.txt"
    regex(%r{/v?(?:\d+(?:\.\d+)+)/ParaView[._-]v?(\d+(?:[.-]\d+)+)(?:[._-](.*?))?[._-](?:#{arch}|universal)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
