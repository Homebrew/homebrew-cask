cask 'brave' do
  version '0.19.121'
  sha256 '69c5f59edd672f070c044387fb2a831b3b1e79f1a23fb96e62a25791f41c419d'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '22c43af2ac2214cc5a6404c75bd38be6cf96f666a17141fbeb1bbdac126e6a93'
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
