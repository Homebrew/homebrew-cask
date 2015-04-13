cask :v1 => 'mail-plugin-manager' do
  version :latest
  sha256 :no_check

  url 'http://www.chungwasoft.com/files/MPM_latest.zip'
  name 'Mail Plugin Manager'
  homepage 'http://www.chungwasoft.com/mailpluginmanager/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mail Plugin Manager.app'
end
