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
    url 'http://dl.devmate.com/com.macpaw.CleanMyMac3/CleanMyMac3.dmg'
    appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac3.xml'
    app 'CleanMyMac 3.app'

    uninstall :launchctl => 'com.macpaw.CleanMyMac3.Agent'

    zap :delete => [
      '/Library/LaunchDaemons/com.macpaw.CleanMyMac3.Agent.plist',
      '/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac3.Agent',
      '/Users/Shared/CleanMyMac 3',
      '/private/var/run/com.macpaw.CleanMyMac3.Agent.socket',
      '~/Library/Application Support/CleanMyMac 3',
      '~/Library/Caches/CleanMyMac 3',
      '~/Library/Logs/CleanMyMac 3.log',
      '~/Library/Preferences/com.macpaw.CleanMyMac-3-Helper.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac3.KnowledgeBase.plist',
      '~/Library/Preferences/com.macpaw.CleanMyMac3.plist',
    ]
  end

  name 'CleanMyMac'
  homepage 'http://macpaw.com/cleanmymac'
  license :commercial
end
