cask 'codelite' do
  version :latest
  sha256 :no_check

  url 'http://downloads.codelite.org/downloads.php?osx'
  name 'CodeLite'
  homepage 'http://codelite.org'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  app 'codelite.app'

  zap delete: [
                '~/Library/Application Support/codelite',
                '~/Library/Preferences/codelite.plist',
              ]
end
