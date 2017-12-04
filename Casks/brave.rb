cask 'brave' do
  version '0.19.105'
  sha256 '7fbc1f5a9fb26e8c98f6dfe82c457cb8302443e1e29dc7cca532226ca6b1fcff'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '7757fac2cf1e16998f6fff6bb810b584a9bcce3b39986e8fc462bc6985ba84c1'
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
