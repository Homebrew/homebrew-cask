cask 'anonvpn' do
  version '1.0.5.5'
  sha256 '76dfb3f3f62eb6a0739b1d4350ee20bcbd81fca5821fdaf35cfd57b3032817e2'

  url "https://anonvpn.io/updater/AnonVPN-MacOSX-10.7-#{version}.dmg"
  name 'AnonVPN'
  homepage 'https://anonvpn.io/'

  app 'AnonVPN.app'

  zap delete: [
                '~/Library/Application Support/AnonVPN',
                '~/Library/Application Support/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.proxpn.macos.anonvpn.sfl*',
                '~/Library/Caches/com.proxpn.macos.AnonVPN',
                '~/Library/Preferences/com.proxpn.macos.AnonVPN.plist',
              ]
end
