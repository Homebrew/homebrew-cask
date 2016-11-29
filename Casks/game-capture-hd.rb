cask 'game-capture-hd' do
  if MacOS.version <= '10.10'
    version '2.0.5_983'
    sha256 '4803bcac9069e1e63a89e9053fdf2285487acf9e608e84f7610555075489ad5a'

    url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  else
    version '2.5.1_1123'
    sha256 'e4c8b6cce606d9254a67bbd4784354bb837674ada28d326753edcac340edb2f9'

    url "https://edge.elgato.com/egc/macos/egcm/#{version.major_minor_patch}/final/gchdm_#{version.no_dots}.dmg"
  end

  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: 'd35e51bebe6a775722c02bd53f3804d2530f4df98c833c0057ff76c62d0d0a19'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'

  app 'Game Capture HD.app'
end
