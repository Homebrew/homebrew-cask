cask 'onecast' do
  version '1.12'
  sha256 '412799e32f2f92d7ef10916956815282a5fa34c80895dca90c9d90f54a13c65e'

  url 'https://onecast.me/downloads/OneCast.dmg'
  appcast 'https://onecast.me/download/'
  name 'OneCast'
  homepage 'https://onecast.me/'

  auto_updates true

  app 'OneCast.app'
end
