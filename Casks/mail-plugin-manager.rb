cask :v1 => 'mail-plugin-manager' do
  version :latest
  sha256 :no_check

  url 'http://www.chungwasoft.com/files/MPM_latest.zip'
  name 'Mail Plugin Manager'
  appcast 'https://littleknownsoftware.com/feed/mpm',
          :sha256 => 'd2c4c72e0bbbeb1b0d159bef42782a2141d292464853f8a511b3f3376cd95fb0'
  homepage 'http://www.chungwasoft.com/mailpluginmanager/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mail Plugin Manager.app'
end
