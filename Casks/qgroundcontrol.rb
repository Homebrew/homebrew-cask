cask :v1 => 'qgroundcontrol' do
  version :latest
  sha256 :no_check

  url 'http://latestfiasco.com/ftp/qgroundcontrol-pixhawk.dmg'
  homepage 'http://qgroundcontrol.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'qgroundcontrol.app'
end
