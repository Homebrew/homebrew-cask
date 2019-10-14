cask 'peakhour' do
  version '4.1.6,34948'
  sha256 'b492766b33f37fd4e25abf7025d641c751657ea1efcfe59960d66380da2fa390'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml"
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com/'

  auto_updates true

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
