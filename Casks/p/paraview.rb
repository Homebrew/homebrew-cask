cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.13.0,RC1-MPI-OSX11.0-Python3.10"
    sha256 "3dd49675e8d3bc0f4b571ffcebd3eb9e4449c498352eb83d3e56a88dd2cec2a2"
  end
  on_intel do
    version "5.13.0,RC1-MPI-OSX10.15-Python3.10"
    sha256 "0936966922a0925304706969c47ea0659aa167721afd80a1ccc70a2ab36fe357"
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

  depends_on macos: ">= :sierra"

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
