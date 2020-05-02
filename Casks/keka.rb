cask 'keka' do
  version '1.1.28'
  sha256 'c76ae2096348c8d4d54152d4a83c7075c3afbc6bf903161be90dd26ec2b0dcf2'

  # github.com/aonez/Keka/ was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'https://www.keka.io/'

  auto_updates true
  conflicts_with cask: 'keka-beta'

  app 'Keka.app'

  zap trash: [
               '~/Library/Containers/com.aone.keka',
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
