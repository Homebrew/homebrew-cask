cask 'game-capture-hd' do
  if MacOS.version <= '10.10'
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.5_1119'
    sha256 '2d45145f1f86445847c07f349d525812cbc67cddce8f5fc3707164df359d6f87'

    url "https://edge.elgato.com/egc/macos/egcm/#{version.major_minor}/final/gchdm_#{version.no_dots}.dmg"
  end

  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'a397c88f22ee03e4616273d34d35b1cc1e01e0b9ffe3603ebf3e5f09cd439e6a'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'

  app 'Game Capture HD.app'
end
