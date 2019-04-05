cask 'peakhour' do
  version '4.1.2,34599'
  sha256 'add77b202dc455c75860e05fe6af84a347caf6c635852624136a66ecff51f678'

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
