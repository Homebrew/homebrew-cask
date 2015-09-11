cask :v1 => 'brackets' do
  version '1.4'
  sha256 'c725999990fb20bf86cd23febea192f78e691a3b63e8425c50001d92fbee8dc9'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom'
  name 'Brackets'
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap :delete => [
                  '~/Library/Application Support/Brackets',
                  '~/Library/Preferences/io.brackets.appshell.plist',
                 ]
end
