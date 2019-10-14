cask 'brackets' do
  version '1.14'
  sha256 'd1545549863a79a3c4824f9a35866e78f2822664ddeeaeb3cf85a14b491a86cb'

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
