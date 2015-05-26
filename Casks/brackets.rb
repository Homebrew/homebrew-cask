cask :v1 => 'brackets' do
  version '1.3'
  sha256 '8ea96c374fdee7e1db7300a78b03b7c1391e26a65b976d7c0532957877c657fb'

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
