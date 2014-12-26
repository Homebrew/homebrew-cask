cask :v1 => 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "http://download.hardcoded.net/dupeguru_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
