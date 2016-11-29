cask 'camed' do
  version '3.2'
  sha256 '7956c929a3518102a5364982e1ba978930228169d4d1eedb68c2db62fc4a86f1'

  url "https://downloads.sourceforge.net/camprocessor/CAMEd-#{version}-macosx-cocoa-x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/camprocessor/rss',
          checkpoint: '1ec7ebc109fd8ebeb0e49f53a3339ef217e926b986ba48fe6d1ac76fc0f4787e'
  name 'CAM Editor'
  homepage 'http://camprocessor.sourceforge.net/'

  app "CAMEd-#{version}/CAMed.app"
end
