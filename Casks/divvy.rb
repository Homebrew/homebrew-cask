cask :v1 => 'divvy' do
  version :latest
  sha256 :no_check

  url 'https://mizage.com/downloads/Divvy.zip'
  appcast 'https://mizage.com/updates/profiles/divvy.php'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Divvy.app'

  zap :delete => [
                  '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                  '~/Library/Preferences/com.mizage.Divvy.plist',
                 ]
end
