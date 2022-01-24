cask "id3-editor" do
  version "1.28.50"
  sha256 "43390edcb10183fae90e5f541bdf97c757e92f1c250bf1d3baaf7a52ef5a05b3"

  url "http://www.pa-software.com/release/ID3Editor.arm.#{version}.dmg"
  name "ID3 Editor"
  desc "MP3 and AIFF ID3 tag editor"
  homepage "http://www.pa-software.com/id3editor/"

  livecheck do
    url "http://www.pa-software.com/id3editor/history/"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "ID3 Editor.app"
end
