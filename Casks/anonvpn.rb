cask 'anonvpn' do
  version '1.0.4.2'
  sha256 '0be4919705d08833a6246fa9f78dbe6d90d59981dec729370dbb6cfed5d1f476'

  url "https://anonvpn.io/updater/AnonVPN-MacOSX-10.5-#{version}.dmg"
  name 'AnonVPN'
  homepage 'https://anonvpn.io/'
  license :gratis

  app 'AnonVPN.app'

  zap delete: [
                '~/Library/Application Support/AnonVPN',
                '~/Library/Application Support/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.proxpn.macos.anonvpn.sfl',
                '~/Library/Caches/com.proxpn.macos.AnonVPN',
                '~/Library/Preferences/com.proxpn.macos.AnonVPN.plist',
              ]
end
