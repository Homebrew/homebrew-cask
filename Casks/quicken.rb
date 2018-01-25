cask 'quicken' do
  version '2018'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.quicken.com/mac/QuickenSub#{version}/Quicken#{version}.dmg"
  name 'Quicken'
  homepage 'https://www.quicken.com/mac'

  depends_on macos: '>= :yosemite'

  app 'Quicken.app'

  zap trash: [
               '~/Library/Preferences/com.quicken.Quicken.plist',
               '~/Library/Application Support/Quicken',
             ]
end
