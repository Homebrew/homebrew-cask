cask 'brave' do
  version '0.22.667'
  sha256 'd63d4b73a9e3f845f2ca0d81d6b4035fc44fc368a792102797dbcacf586d7d35'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '1a8500ca3ed76817bd41961493622ad8c1a172309cfade3479453f4d1b1e1f55'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
