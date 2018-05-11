cask 'exodus' do
  version '1.51.0'
  sha256 '38be4fe34ce7d5b5e80ac624bc1deb7eab5465f149b3466ee940abbd88cd4193'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '79ab9fb269105365e313f136bb146a8d10fa6550137bea8952b72416fb9c393a'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'

  zap trash: [
               '~/Library/Application Support/Exodus',
               '~/Library/Preferences/com.electron.exodus.helper.plist',
               '~/Library/Preferences/com.electron.exodus.plist',
               '~/Library/Saved Application State/com.electron.exodus.savedState',
             ]
end
