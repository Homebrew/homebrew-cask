cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.0.0,RC3-MPI-OSX11.0-Python3.12"
    sha256 "aaf09548a0ba111a71005e117a02fcf2e83152753a0ee1e1d65c5ea5ced058b8"
  end
  on_intel do
    version "6.0.0,RC3-MPI-OSX10.15-Python3.12"
    sha256 "bb94c218569e8cc3c4617c26e52ab60aa2434a7f4d8884a65df740edc2ed2096"
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

  app "ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
