cask 'game-capture-hd' do
  if MacOS.version <= '10.7'
    version '2.0.3_970'
    sha256 '9eeb0bb7c00f29aa17a0bf4ff958f43e7ddae035b1390a003b0a43b6585c3542'
  else
    version '2.0.4_981'
    sha256 '21b741d7e64f0f14e2f230cd3b461657cd70ed7b2adc7ec731bb2b8994589f4f'
  end

  url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'b3967a3eb2b8a46d7705d00bfb81cac8a553bef4bba09893856cd8f895e6878b'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'
  license :commercial

  app 'Game Capture HD.app'
end
