cask 'brave' do
  version '0.19.116'
  sha256 'd81da83761ed45da15fe5de163aa45eb27657cdc756edfb07c95a2ae4dd9d4d7'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '0dc35cfd5477c6fdea94756fdde0e83723bed8784957b89d69b7d0c7ba1f606d'
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
