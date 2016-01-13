cask 'divvy' do
  version '1.4.2'
  sha256 '4e30a42d50a5e484ae410d1ed14021e7bb661ca2872def435c4d38ab0adcc9b9'

  url "https://mizage.com/downloads/Divvy_#{version}.zip"
  appcast 'https://mizage.com/updates/profiles/divvy.php',
          :sha256 => '74ffc4cfa2896020f986fa3a6c5a1c4c697023a482af998345ce8bd7974e058f'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'
  license :commercial

  app 'Divvy.app'

  zap :delete => [
                   '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                   '~/Library/Preferences/com.mizage.Divvy.plist',
                 ]
end
