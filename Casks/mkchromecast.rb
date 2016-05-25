cask 'mkchromecast' do
  version '0.2.5'
  sha256 '1bba4cf6a53c49fa2befa2ebb918c7635a715682f4fb16f954a2ced89ad4e520'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'e6a004756caca3ee4430ac79c52b41009786da0948996e75fa9daa897c3977e7'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
