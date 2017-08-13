cask 'peakhour' do
  version '4.0.3'
  sha256 'e24e5c106dbf21f82b58ffaa5a704dfa3bc9e2c35b4fa195f940590af8db669a'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '20c1b010378647ba689f4e781704f45a72cdd6d19f2d25ae9be53851c758e28c'
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
