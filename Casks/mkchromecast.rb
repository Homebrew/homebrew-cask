cask 'mkchromecast' do
  version '0.3.4'
  sha256 '2814e1e19c39a7e8c0f5104d18c57a09574e3f66c631482ea0365177683fb6fd'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'c2db1d28c766de288a1671e45dea469e0df2f4e006b4760bd44243831c4326a4'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
