cask 'peakhour' do
  version '4.0.6,32810'
  sha256 '9640246fb990fa02ff0b65fd0737a2fedf81c69b4ed33230a7fb8ce1d8080469'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '3bb64069e2f5ba0574795680ea7a057d4f22f70c877f585fca1c6672d82fc966'
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
