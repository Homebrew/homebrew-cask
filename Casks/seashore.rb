cask 'seashore' do
  version '2.5.3'
  sha256 'e5ffc463c399d76e770947620747ebada3eb297a128991ebc6e68238dd2a239b'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
