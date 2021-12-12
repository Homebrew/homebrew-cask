cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "24.0"

  if Hardware::CPU.intel?
    sha256 "0621c6833c82ebd7931a198ce5a973cb2646d4b0dc827224cfa6abbd53383997"
  else
    sha256 "68f071bf58e08d48e227d9bd65b0a55211305680d6ecee87de0d726c20129251"
  end

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version}/MacOSX/VM/oxygen-openjdk#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    regex(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
  end

  suite "Oxygen XML Editor"
end
