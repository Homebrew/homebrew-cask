cask 'bittorrent' do
  version :latest
  sha256 :no_check

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/os/osx/track/stable/endpoint/btmac'
  name 'BitTorrent'
  homepage 'https://www.bittorrent.com/'

  installer manual: 'Bittorrent.app'

  uninstall delete: '/Applications/BitTorrent.app'

  zap delete: [
                '~/Library/Preferences/com.com.bittorrent.BitTorrent.plist',
                '~/Library/Application Support/BitTorrent',
                '~/Library/Saved Application State/com.com.bittorrent.BitTorrent.savedState',
                '~/Library/Caches/com.com.bittorrent.BitTorrent',
                '~/Library/LaunchAgents/com.bittorrent.BitTorrent.plist',
              ]
end
