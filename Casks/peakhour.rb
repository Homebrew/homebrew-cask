cask 'peakhour' do
  version '4.0.1'
  sha256 '582d9d7205ffe29cea59ba6d4a36bb64b72ca7bb6761a951bab69cb384c84903'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '5971c9c3e40a29c33cf9bf8eb53ecc67dbd03077f5e3bede697682a86fd70b5a'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com/'

  app "PeakHour #{version.major}.app"

  uninstall launchctl: "com.digitician.peakhour#{version.major}.launchAtLoginHelper",
            quit:      "com.digitician.peakhour#{version.major}"

  zap delete: [
                "~/Library/Application Scripts/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
                "~/Library/Caches/com.digitician.peakhour#{version.major}",
                "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.digitician.peakhour#{version.major}",
                "~/Library/Containers/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
                "~/Library/Cookies/com.digitician.peakhour#{version.major}.binarycookies",
              ],
      trash:  [
                "~/Library/Application Support/com.digitician.peakhour#{version.major}",
                '~/Library/Application Support/PeakHour*',
                "~/Library/Preferences/com.digitician.peakhour#{version.major}.plist",
              ]
end
