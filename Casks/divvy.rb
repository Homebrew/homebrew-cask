cask :v1 => 'divvy' do
  version '1.4.1'
  sha256 '225e5e8a1a9e145db588ca71710ffb41f5a7f926de5f48484710258d92b2a62a'

  url "https://mizage.com/downloads/Divvy_#{version}.zip"
  appcast 'https://mizage.com/updates/profiles/divvy.php'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'
  license :commercial

  app 'Divvy.app'

  zap :delete => [
                  '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                  '~/Library/Preferences/com.mizage.Divvy.plist',
                 ]
end
