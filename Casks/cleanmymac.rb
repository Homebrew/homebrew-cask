cask 'cleanmymac' do
  if MacOS.release <= :snow_leopard
    version '1.11,1417522595'
    sha256 'ac5d4bf36882dd34bdb0a68eb384a6b3aba355be896d03dfa40a120c6bef4a0d'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac/#{version.major_minor}/#{version.after_comma}/CleanMyMacClassic-#{version.major_minor}.zip"
    appcast 'https://updates.devmate.com/com.macpaw.CleanMyMac.xml',
            :checkpoint => 'd9ac93bf9f995dc0903a668b357dadbe7cb187bc1382f6183bc40e5d79a26802'
    app 'CleanMyMac.app'
    # TODO: add uninstall and zap stanzas for legacy app
  elsif MacOS.release <= :lion
    version '2.4,1443544143'
    sha256 '0d08f4d9b36493359f6ca3ff2f96a9b769a8eed4ea017ecbb2d5644f75aafad0'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac#{version.to_i}-#{version.major_minor_patch}.zip"
    appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            :checkpoint => 'd9ac93bf9f995dc0903a668b357dadbe7cb187bc1382f6183bc40e5d79a26802'
    app "CleanMyMac #{version.major}.app"

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.major}.Agent"

    zap :delete => [
                     "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
                     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                     "/Users/Shared/CleanMyMac #{version.major}",
                     "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                     "~/Library/Application Support/CleanMyMac #{version.major}",
                     "~/Library/Caches/CleanMyMac #{version.major}",
                     "~/Library/Logs/CleanMyMac #{version.major}.log",
                     "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
                   ]
  else
    version '3.3.0,1451475053'
    sha256 '14038d3554f771e32840dbd0936235d62b95713638b4b1ca94daf32847da389f'

    # devmate.com is the official download host per the appcast feed
    url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac3-#{version.major_minor_patch}.zip"
    appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            :checkpoint => 'd9ac93bf9f995dc0903a668b357dadbe7cb187bc1382f6183bc40e5d79a26802'
    app "CleanMyMac #{version.major}.app"

    postflight do
      suppress_move_to_applications
    end

    uninstall :launchctl => "com.macpaw.CleanMyMac#{version.major}.Agent"

    zap :delete => [
                     "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
                     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                     "/Users/Shared/CleanMyMac #{version.major}",
                     "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                     "~/Library/Application Support/CleanMyMac #{version.major}",
                     "~/Library/Application Support/CleanMyMac #{version.major} Menu",
                     "~/Library/Caches/CleanMyMac #{version.major}",
                     "~/Library/Logs/CleanMyMac #{version.major}.log",
                     "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
                     "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.menu.plist",
                     "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
                   ]
  end

  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'
  license :commercial
end
