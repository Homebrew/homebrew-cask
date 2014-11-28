cask :v1 => 'mail-plugin-manager' do
  version :latest
  sha256 :no_check

  url 'http://www.chungwasoft.com/files/MPM_latest.zip'
  homepage 'http://www.chungwasoft.com/mailpluginmanager/'
  license :unknown

  app 'Mail Plugin Manager.app'
end
