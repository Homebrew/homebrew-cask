cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-openjdk-aarch64"

  version :latest
  sha256 :no_check

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen#{arch}.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  suite "Oxygen XML Editor"
end
