cask 'quicken' do
  version '2018,5.2.2'
  sha256 'cc7ba946e8439617bdf2ff744829baea368d7ec67bf3acfde5658664387237ea'

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
