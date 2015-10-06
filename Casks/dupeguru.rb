cask :v1 => 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "http://download.hardcoded.net/dupeguru_osx_#{version.gsub('.', '_')}.dmg"
  name 'dupeGuru'
  appcast 'http://www.hardcoded.net/updates/dupeguru.appcast',
          :sha256 => '164c2bceb5274994dacc4ea02b030ba963e60e4ed83bb388b250dd9692a544b5'
  homepage 'http://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
