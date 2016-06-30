cask 'mkchromecast' do
  version '0.2.9.1'
  sha256 'aa31a493c83e5ca4c95d1867e63cc685340e4af795a4cb779d97cd0db14ed812'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'e09c8f379bd125ae97f49f074b143e96ca9f6f2c8a877c6d0b94070084fd33df'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
