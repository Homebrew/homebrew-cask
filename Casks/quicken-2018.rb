cask 'quicken-2018' do
  version :latest
  sha256 :no_check

  url "https://download.quicken.com/mac/QuickenSub2018/Quicken2018.dmg"
  name 'Quicken 2018'
  homepage 'https://www.quicken.com/mac'

  depends_on macos: '>= :yosemite'

  app 'Quicken2018.app'

  zap trash: [
  	'~/Library/Perferences/com.quicken.Quicken.plist',
  	'~/Library/Application Support/Quicken',
  ]
end