cask :v1 => 'dupeguru' do
  version '3.9.0'
  sha256 '4c35a3556f43aeaad75e2c9b21075d0087634bb546b72a13d31cfaa731f6f697'

  url "http://download.hardcoded.net/dupeguru_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru/'
  license :unknown    # todo: improve this machine-generated value

  app 'dupeGuru.app'
end
