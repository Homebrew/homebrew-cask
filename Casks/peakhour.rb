cask 'peakhour' do
  version '4.0.7,32822'
  sha256 '8c66d7a574e286a56466029cb16e7844699821a2978ec5b29dc3c8a04cb1ffe8'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '1433d418e0f63ea48466b3a4db5cf2f9097bb80eb12c1f92c1e71583eed72c5f'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com/'

  app "PeakHour #{version.major}.app"

  uninstall launchctl: "com.digitician.peakhour#{version.major}.launchAtLoginHelper",
            quit:      "com.digitician.peakhour#{version.major}"

  zap trash: [
               "~/Library/Application Scripts/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
               "~/Library/Application Support/com.digitician.peakhour#{version.major}",
               '~/Library/Application Support/PeakHour*',
               "~/Library/Caches/com.digitician.peakhour#{version.major}",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.digitician.peakhour#{version.major}",
               "~/Library/Containers/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
               "~/Library/Cookies/com.digitician.peakhour#{version.major}.binarycookies",
               "~/Library/Preferences/com.digitician.peakhour#{version.major}.plist",
             ]
end
