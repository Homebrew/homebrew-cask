cask 'mkchromecast' do
  version '0.3.6'
  sha256 'cf167c5770a5a5b03b81865ceab0cbc50c9d5f93ff826bc1b4c204e5f692b112'

  # github.com/muammar/mkchromecast was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '531ae62f7285a54c1b3e7540cd16bba20a0f0ef2036182c20bd696964919d464'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
