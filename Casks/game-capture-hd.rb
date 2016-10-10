cask 'game-capture-hd' do
  if MacOS.version <= '10.7'
    version '2.0.3_970'
    sha256 '9eeb0bb7c00f29aa17a0bf4ff958f43e7ddae035b1390a003b0a43b6585c3542'
  else
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'
  end

  url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'a1d6aa74e2d6182ae3b0be8b40b72c550824922fc6b97f3a2b01ab88ad9e5606'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'

  app 'Game Capture HD.app'
end
