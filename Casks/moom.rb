cask 'moom' do
  version '3.2.2'
  sha256 '8f9a5ce372ce6b8c992a123c4a531bcfac2483ca90fd9818475ac4eabe33ade2'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.gsub('.', '')}.dmg"
  appcast 'https://manytricks.com/moom/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'
  license :commercial

  app 'Moom.app'

  zap :delete => [
                   '~/Library/Preferences/com.manytricks.Moom.plist',
                   '~/Library/Application Support/Many Tricks',
                 ]
end
