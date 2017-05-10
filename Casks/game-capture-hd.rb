cask 'game-capture-hd' do
  if MacOS.version <= '10.10'
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.6_1214'
    sha256 'eb5236e5435f45123edd28510a1c0c97248bebd6c3c870bfef55aa30694664e6'

    url "https://edge.elgato.com/egc/macos/egcm/#{version.major_minor_patch}/final/gchdm_#{version.no_dots}.dmg"
  end

  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'af4fe0ec28b8c1593175660072a1929fc7db163ea9a4bb83c1e3bea2144d34b2'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'

  app 'Game Capture HD.app'
end
