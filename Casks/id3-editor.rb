cask "id3-editor" do
  version "1.28.50"
  sha256 "c19eeb045d0a48862a9f66bbdc27b00f9077690a23491804b539d00d6b7ee352"

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  name "ID3 Editor"
  desc "MP3 and AIFF ID3 tag editor"
  homepage "http://www.pa-software.com/id3editor/"

  livecheck do
    url "http://www.pa-software.com/id3editor/history/"
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "ID3 Editor.app"
end
