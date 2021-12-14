cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-openjdk-aarch64"

  version "24.0"
  sha256 :no_check

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    regex(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
  end

  suite "Oxygen XML Editor"
end
