cask 'sunvox' do
  version '1.9.4c'
  sha256 '19c1a4e28459e31e1a19986f219d4caa4eb2cb5bc9f6aa994abdbb2ebf6ac4ac'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
