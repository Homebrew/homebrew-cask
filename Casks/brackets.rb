cask 'brackets' do
  version '1.6'
  sha256 'f5f5a51425eea0a598b53293e502732bae22951c19359cf3b9629db11851aae6'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: 'd75efaddad232d4795851ae842d8c156971be6b5f22f2116f870b50abdf133f6'
  name 'Brackets'
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
