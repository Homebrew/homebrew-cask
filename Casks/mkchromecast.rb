cask 'mkchromecast' do
  version '0.3.3'
  sha256 '39d6e40d18c7e339a578fd662d53bc1d66a4efb0066d09af39f31704d55b89e7'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '07b87162eb0974455e6ee6cc714dc809cf7f8392c653f828d7e1ab449e6a9bf3'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
