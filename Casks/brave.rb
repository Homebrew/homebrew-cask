cask 'brave' do
  version '0.22.727'
  sha256 '6879c7bd88bd282a1aea4442ca2467bf6982bb8d3142d11de8b7c798419115c2'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2dd0a3bf2cf300fe9d27d1d4d998e5169bd40ab914b3b0afc7b7339a7acc61bd'
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
