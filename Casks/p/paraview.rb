cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.0.0,MPI-OSX11.0-Python3.12"
    sha256 "aeebb7b630d3dfe9d6284f7a35195a5fad3551ee2aa64d3e19d10c92e73ed635"
  end
  on_intel do
    version "6.0.0,MPI-OSX10.15-Python3.12"
    sha256 "62720d784d7893914c05fbadd2a034d4a1696e73dc89d3a297f7820559b5834a"
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

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
