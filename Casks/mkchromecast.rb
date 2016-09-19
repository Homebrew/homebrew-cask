cask 'mkchromecast' do
  version '0.3.6'
  sha256 'cf167c5770a5a5b03b81865ceab0cbc50c9d5f93ff826bc1b4c204e5f692b112'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '45cc38bb391c203608db6e8cf48df988482d3915ba24406a9a0867068f7210f6'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
