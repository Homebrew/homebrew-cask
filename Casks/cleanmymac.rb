cask 'cleanmymac' do
  if MacOS.version <= :snow_leopard
    version '1.12,1474717668'
    sha256 '8cdc59584eff5b7662bdb069168bbbed76a3de8988db9635163c13df468d812f'

    # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
    url "https://dl.devmate.com/com.macpaw.CleanMyMac/#{version.major_minor}/#{version.after_comma}/CleanMyMacClassic-#{version.major_minor}.zip"
    appcast 'https://updates.devmate.com/com.macpaw.CleanMyMac.xml',
            checkpoint: '0dc743954653b4623c9ff60ec7965b09e2f36ed2bfacd6c2563c7844fa347138'
    app 'CleanMyMac.app'
    # TODO: add uninstall and zap stanzas for legacy app
  elsif MacOS.version <= :lion
    version '2.5.0,1473949812'
    sha256 '9f8513d39e3b2f21ac76e94c370561fe582f9d50937070ef6fc58ed4506353bf'

    # devmate.com/com.macpaw.CleanMyMac2 was verified as official when first introduced to the cask
    url "https://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac#{version.major}-#{version.major_minor_patch}.zip"
    appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            checkpoint: 'e29bde675d18732b441d8bb7e0850356a9ef2192efc68276ec1c146904ae1c13'
    app "CleanMyMac #{version.major}.app"

    uninstall launchctl: "com.macpaw.CleanMyMac#{version.major}.Agent"

    zap delete: [
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
    version '3.5.1,1474556872'
    sha256 'c3d09bb6d7138cc35f1d1334e0a3f2847db8d6527f3cb6020480023839b485a5'

    # devmate.com/com.macpaw.CleanMyMac3 was verified as official when first introduced to the cask
    url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/#{version.major_minor_patch}/#{version.after_comma}/CleanMyMac3-#{version.major_minor_patch}.zip"
    appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml",
            checkpoint: 'e85549fda1ff6742bc90114ebd4662fa3956042c80dd070213c6b445b50f06b9'
    app "CleanMyMac #{version.major}.app"

    postflight do
      suppress_move_to_applications
    end

    uninstall launchctl: "com.macpaw.CleanMyMac#{version.major}.Agent"

    zap delete: [
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
                  "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
                  "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
                ]
  end

  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'
end
