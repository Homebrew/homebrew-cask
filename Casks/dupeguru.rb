cask :v1 => 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "http://download.hardcoded.net/dupeguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'dupeGuru'
  appcast 'http://www.hardcoded.net/updates/dupeguru.appcast',
          :sha256 => '3abf01d99fb21c356cb439132cab9c734f6d514b4a19e7fcc1b4c408fcd08dbb'
  homepage 'http://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
