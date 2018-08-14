cask 'brackets' do
  version '1.13'
  sha256 '34d8960d78e7301febcc6b68b85970d119b7a904cdb9a0ecfc445348de1e4bd4'

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
