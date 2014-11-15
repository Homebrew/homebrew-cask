cask :v1 => 'moom' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/moom'
  appcast 'http://manytricks.com/moom/appcast.xml'
  homepage 'http://manytricks.com/moom/'
  license :commercial

  app 'Moom.app'
  zap :delete => [
                  '~/Library/Preferences/com.manytricks.Moom.plist',
                  '~/Library/Application Support/Many Tricks',
                 ]
end
