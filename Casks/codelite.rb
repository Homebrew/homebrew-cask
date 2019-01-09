cask 'codelite' do
  version :latest
  sha256 :no_check

  url 'https://downloads.codelite.org/downloads.php?osx'
  name 'CodeLite'
  homepage 'https://codelite.org/'

  app 'codelite.app'

  zap trash: [
               '~/Library/Application Support/codelite',
               '~/Library/Preferences/codelite.plist',
             ]
end
