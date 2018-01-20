cask 'brave' do
  version '0.19.139'
  sha256 '82b6eb258aa4bd3a34bdda7c3094b2d137f5cf1cbfdb6a43aa98f17f0270d82b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'cdd67a18e4ec9c167cca40ba3477a10ce1cf0b89c1b0887c0274ade2b8183346'
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
