cask 'divvy' do
  version '1.4.2'
  sha256 '4e30a42d50a5e484ae410d1ed14021e7bb661ca2872def435c4d38ab0adcc9b9'

  url "https://mizage.com/downloads/Divvy_#{version}.zip"
  appcast 'https://mizage.com/updates/profiles/divvy.php',
          :sha256 => 'bd0cf3969d52bf6dd3741adef9da9d9e419325e3adf97aba9661eeb05c26d0a9'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'
  license :commercial

  app 'Divvy.app'

  zap :delete => [
                  '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                  '~/Library/Preferences/com.mizage.Divvy.plist',
                 ]
end
