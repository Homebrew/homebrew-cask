cask 'brackets' do
  version '1.5'
  sha256 '753d91370c6c67b028ddfecc8403ec6b887523e0cc48ed074835bb16df7b809b'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          :sha256 => '2ff3524701df4dcd58f69eab438862928f9cdd5cf811a37ebb98a948402baf0f'
  name 'Brackets'
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap :delete => [
                   '~/Library/Application Support/Brackets',
                   '~/Library/Preferences/io.brackets.appshell.plist',
                 ]
end
