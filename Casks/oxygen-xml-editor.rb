cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-openjdk-aarch64"

  version "24.0,2021121317"
  sha256 :no_check

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    strategy :page_match do |page|
      version = page.match(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
      build = page.match(/build\sid:\s(\d+)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  suite "Oxygen XML Editor"
end
