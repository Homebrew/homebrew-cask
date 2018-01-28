cask 'brave' do
  version '0.19.147'
  sha256 'd734f81baf152df62b14c3306dc1162307b1b9ccd828a3bcd82cb2c73cd9a482'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'a8094f4c93de362261d894b4c2e9c2823cf2bcbbce278ad6e32e370105de436b'
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
