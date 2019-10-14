cask 'seashore' do
  version '2.4.12'
  sha256 '899450baa7f50ef05928a6b97d1971a016b5293bc819ae78569e53112114aa7e'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
