cask 'brackets' do
  version '1.14.1'
  sha256 '9e95b89544796ef959b6acb36db77a712f1cf55d09294cff4b6dde648f055160'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap trash: [
               '~/Library/Application Support/Brackets',
               '~/Library/Preferences/io.brackets.appshell.plist',
             ]
end
