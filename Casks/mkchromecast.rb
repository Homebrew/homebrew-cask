cask 'mkchromecast' do
  version '0.3.7.1'
  sha256 'f1531ad19b14b94b7aefca3e2e40c2a80153b57a4f1981e6fb48bbf35dbcfa38'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '5cc4523ae27ba01cdc7e2bde6706bda607682abfebeedf6828d84a31b354e1a1'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com/'

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
