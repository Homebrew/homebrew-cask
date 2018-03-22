cask 'brave' do
  version '0.21.24'
  sha256 '8d014874e7dfc86dfdfc7344b0e1aa2b490d5e806b6c6d9aa30e5f66f9715fb2'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '609d50c515741fdfac1ccd8209f1d39b9113efba6c4b88a529089cb5330b6db2'
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
