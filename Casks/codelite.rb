cask 'codelite' do
  version :latest
  sha256 :no_check

  url 'https://downloads.codelite.org/downloads.php?osx'
  name 'CodeLite'
  homepage 'https://codelite.org/'

  depends_on macos: '>= :mountain_lion'

  app 'codelite.app'

  zap delete: [
                '~/Library/Application Support/codelite',
                '~/Library/Preferences/codelite.plist',
              ]
end
