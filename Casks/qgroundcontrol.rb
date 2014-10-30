class Qgroundcontrol < Cask
  version :latest
  sha256 :no_check

  url 'http://latestfiasco.com/ftp/qgroundcontrol-pixhawk.dmg'
  homepage 'http://qgroundcontrol.org'
  license :unknown

  app 'qgroundcontrol.app'
end
