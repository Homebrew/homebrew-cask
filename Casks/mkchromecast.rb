cask 'mkchromecast' do
  version '0.3.6'
  sha256 'cf167c5770a5a5b03b81865ceab0cbc50c9d5f93ff826bc1b4c204e5f692b112'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '35e0610f7ee3541075f5468d5043e1165ef558216c7e6123bbfc5006fb3e076c'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com/'

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
