cask 'peakhour' do
  version '4.0.10,32937'
  sha256 '3cec20bdb569697c04cd658b454928e756e37aa1a17f5ec2a0b2262da752d538'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
  appcast "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml",
          checkpoint: '0aff3787868237167a016a9bfdd7c1a014e7f63525637830985787216c81966c'
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
