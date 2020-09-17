cask "id3-editor" do
  version "1.28.49"
  sha256 "72235fbd6c2ce1500347698b2657481fd5ef7f73c1ae60148e8035c9245adec5"

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  appcast "http://www.pa-software.com/id3editor/history/"
  name "ID3 Editor"
  homepage "http://www.pa-software.com/id3editor/"

  app "ID3 Editor.app"
end
