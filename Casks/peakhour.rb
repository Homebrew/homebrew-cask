cask 'peakhour' do
  version '4.0.2'
  sha256 'bf62bc3b6e3cb4e8681be70451bf3ec219ed80557b3b1b921629bfb568105d5d'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '2374b834f4b403db314beca2448e6ec9ade501b53b91001658245b7decf13f84'
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
