cask "id3-editor" do
  version "1.28.50"
  sha256 "c19eeb045d0a48862a9f66bbdc27b00f9077690a23491804b539d00d6b7ee352"

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  appcast "http://www.pa-software.com/id3editor/history/"
  name "ID3 Editor"
  homepage "http://www.pa-software.com/id3editor/"

  app "ID3 Editor.app"
end
