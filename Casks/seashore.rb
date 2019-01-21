cask 'seashore' do
  version '2.2.0'
  sha256 '682821d05dd1f5fcf6c158ee5ce8b11e3970c4300bf93cd297c2c90b0c156cf5'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
