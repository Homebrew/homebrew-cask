cask 'quicken' do
  version '2018,5.3.1'
  sha256 '171c4d77db991fd203fc2ae85472250a24ab3706060c46ec28a0e07d249fc885'

  url "https://download.quicken.com/mac/QuickenSub#{version.before_comma}/Quicken#{version.before_comma}.dmg"
  appcast "https://www.quicken.com/support/#{version.before_comma}-release-quicken-mac-release-notes",
          checkpoint: '7cf2eee2ccb80c9d7f771c3e5568c76b3f266392dec9e793cd2a5f6bedf48b5f'
  name 'Quicken'
  homepage 'https://www.quicken.com/mac'

  depends_on macos: '>= :yosemite'

  app 'Quicken.app'

  zap trash: [
               '~/Library/Preferences/com.quicken.Quicken.plist',
               '~/Library/Application Support/Quicken',
             ]
end
