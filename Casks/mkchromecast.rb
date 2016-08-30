cask 'mkchromecast' do
  version '0.3.5'
  sha256 '91db480815aa148cc883ffe8236d17b4e6009466e78f1c49d9db56e408956f2a'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '4c295fe62ab7c0e1b22e0ac561d7c79548288814d01811fed26a580bd80be60e'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
