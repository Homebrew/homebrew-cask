cask 'peakhour' do
  version '4.0.5,32560'
  sha256 'bc5d3e2eda58bfbc19faf3b7361bfacc9f75c8e50e60eca28aa554d23db64c81'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: 'c90c16f187c417ded95f6663126fef07a85d6f3310181d6e608c0ce465948e30'
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
