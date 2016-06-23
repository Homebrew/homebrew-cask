cask 'brackets' do
  version '1.7'
  sha256 '1631dd2603f69488171d29776fa6fad09266a6d22b4263b59ef7d1bc39d64ea8'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: 'aab65b5d8b065a452af59622b1e46def37290e1abe05600cd3539a60c6a67c96'
  name 'Brackets'
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
