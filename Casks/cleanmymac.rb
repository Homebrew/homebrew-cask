cask :v1 => 'cleanmymac' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :snow_leopard
    # devmate.com is the official download host per the vendor homepage
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac/CleanMyMacClassic.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac.xml'
    app 'CleanMyMac.app'
    # todo: add uninstall and zap stanzas for legacy app
  else
    # devmate.com is the official download host per the vendor homepage
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
    app 'CleanMyMac 2.app'

    uninstall :launchctl => 'com.macpaw.CleanMyMac2.Agent'

    zap :delete => [
      '/Library/LaunchDaemons/com.macpaw.CleanMyMac2.Agent.plist',
      '/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac2.Agent',
      '/Users/Shared/CleanMyMac 2',
      '/private/var/run/com.macpaw.CleanMyMac2.Agent.socket',
      '~/Library/Application Support/CleanMyMac 2',
      '~/Library/Caches/CleanMyMac 2',
      '~/Library/Logs/CleanMyMac 2.log',
      '~/Library/Preferences/com.macpaw.CleanMyMac-2-Helper.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac2.KnowledgeBase.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac2.plist',
    ]
  end

  name 'CleanMyMac'
  homepage 'http://macpaw.com/cleanmymac'
  license :commercial
end
