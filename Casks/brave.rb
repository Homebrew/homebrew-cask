cask 'brave' do
  version '0.19.139'
  sha256 '82b6eb258aa4bd3a34bdda7c3094b2d137f5cf1cbfdb6a43aa98f17f0270d82b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '10e9482d50631b343ce7f8adeb1f235bdfbd1604a983d75e7cf8cd3c08a4fecc'
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
