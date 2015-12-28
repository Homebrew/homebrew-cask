cask 'camed' do
  version '3.2'
  sha256 '7956c929a3518102a5364982e1ba978930228169d4d1eedb68c2db62fc4a86f1'

  url "http://downloads.sourceforge.net/sourceforge/camprocessor/CAMEd-#{version}-macosx-cocoa-x86_64.tar.gz"
  name 'CAM Editor'
  homepage 'http://camprocessor.sourceforge.net/'
  license :oss

  app "CAMEd-#{version}/CAMed.app"
end
