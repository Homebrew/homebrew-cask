cask :v1 => 'brackets' do
  version '1.2'
  sha256 '405ed2a85ea95cb1a2d240c7cbf4a1bb6ff916f85fd6667c936b69f933bb1cbe'

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
