cask :v1 => 'speeds-at-ver' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/orta/GamesScreenSaver/master/web/SpeedS@ver.saver.zip'
  name 'SpeedS@ver'
  homepage 'https://github.com/orta/SpeedS-ver'
  license :mit

  screen_saver 'SpeedS@ver.saver'
end
