cask 'codelite' do
  version '12.0.0'
  sha256 '2e7de18f3f1ab8095e71f46e14945eb922a1600ceb071f42c8faf4d483abb10f'

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
