cask 'keka' do
  version '1.0.13'
  sha256 '4f24d0f88f7c4e0852c452f948ecc549df7ce44b7e529aadb51ef353a71e24c6'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '0008beedbd97ca62d68af13b49fbedad5a68faacc194639f288a310251dde2cf'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  conflicts_with cask: 'keka-beta'
  depends_on macos: '>= :lion'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
