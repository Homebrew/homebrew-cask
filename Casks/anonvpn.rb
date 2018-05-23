cask 'anonvpn' do
  version '1.0.5.5'
  sha256 '76dfb3f3f62eb6a0739b1d4350ee20bcbd81fca5821fdaf35cfd57b3032817e2'

  url "https://anonvpn.io/updater/AnonVPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://api.anonvpn.io/updater/appcast.rss',
          checkpoint: 'e4c789ae8eb8e5bb971187b6a8a734c59606c4c22457bf28b844b266771b4c04'
  name 'AnonVPN'
  homepage 'https://anonvpn.io/'

  app 'AnonVPN.app'

  zap trash: [
               '~/Library/Application Support/AnonVPN',
               '~/Library/Application Support/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.proxpn.macos.anonvpn.sfl*',
               '~/Library/Caches/com.proxpn.macos.AnonVPN',
               '~/Library/Preferences/com.proxpn.macos.AnonVPN.plist',
             ]
end
