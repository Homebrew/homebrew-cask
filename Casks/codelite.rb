cask 'codelite' do
  version '13.0.4'
  sha256 '7061fe30ea8ebfcc8bf0d143f6992fbad1d2d834810ab85b79718de41c17a9c0'

  url 'https://downloads.codelite.org/downloads.php?osx'
  appcast 'https://github.com/eranif/codelite/releases.atom'
  name 'CodeLite'
  homepage 'https://codelite.org/'

  app 'codelite.app'

  zap trash: [
               '~/Library/Application Support/codelite',
               '~/Library/Preferences/codelite.plist',
             ]
end
