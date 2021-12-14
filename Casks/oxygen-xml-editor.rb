cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-openjdk-aarch64"

  version "24.0"
  sha256 :no_check

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  livecheck do
    url "https://www.oxygenxml.com/allVersions.xml"
    strategy :page_match do |page|
      v = page[/buildId_(\d+(?:_\d+)+)/i, 1]
      v.tr("_", ".")
    end
  end

  suite "Oxygen XML Editor"
end
