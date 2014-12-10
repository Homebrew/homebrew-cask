cask :v1 => 'divvy' do
  version :latest
  sha256 :no_check

  url 'https://mizage.com/downloads/Divvy.zip'
  appcast 'http://mizage.com/updates/profiles/divvy.php'
  homepage 'http://mizage.com/divvy/'
  license :unknown    # todo: improve this machine-generated value

  app 'Divvy.app'

  zap :delete => [
                  '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                  '~/Library/Preferences/com.mizage.Divvy.plist',
                 ]
end
