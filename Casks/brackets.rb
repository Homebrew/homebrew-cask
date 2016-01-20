cask 'brackets' do
  version '1.6'
  sha256 'f5f5a51425eea0a598b53293e502732bae22951c19359cf3b9629db11851aae6'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '2ff3524701df4dcd58f69eab438862928f9cdd5cf811a37ebb98a948402baf0f'
  name 'Brackets'
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
