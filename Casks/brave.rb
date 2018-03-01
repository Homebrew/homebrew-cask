cask 'brave' do
  version '0.20.46'
  sha256 '6e2fc9d25ecdd042c1fb072da1154d92cf4455ae9258c5e66dc5e86edbe146ab'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '16d3d10cdd9aee07e489994f19faf6120277e233b3b01512f8078be3170bdcce'
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
