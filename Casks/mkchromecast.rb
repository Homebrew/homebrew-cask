cask 'mkchromecast' do
  version '0.3.1'
  sha256 '51c3fea62c07f16e9ec2b9d729c42b34f541da25927fffcaf1932c320ffb637e'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'f71659a2fa7e5c02fff3457cb46c5977a44a07b5dad887d24242fd49a039199c'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
