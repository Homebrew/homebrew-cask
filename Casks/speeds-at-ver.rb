cask 'speeds-at-ver' do
  version :latest
  sha256 :no_check

  # raw.githubusercontent.com/orta/GamesScreenSaver was verified as official when first introduced to the cask
  url 'https://raw.githubusercontent.com/orta/GamesScreenSaver/master/web/SpeedS@ver.saver.zip'
  name 'SpeedS@ver'
  homepage 'https://github.com/orta/SpeedS-ver'

  screen_saver 'SpeedS@ver.saver'
end
