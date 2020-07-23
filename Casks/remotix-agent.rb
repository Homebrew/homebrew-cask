cask 'remotix-agent' do
  version '1.4.2-20472'
  sha256 '97ccca1ae621a78b55fa98a6413727e58132b45ce812bbf218160271806ae4e6'

  # remotix.com/agent-mac was verified as official when first introduced to the cask
  url "https://downloads.remotix.com/agent-mac/RemotixAgent-#{version}.pkg"
  appcast 'https://remotix.com/downloads-mac/'
  name 'Remotix Agent'
  homepage 'https://remotixcloud.com/'

  auto_updates true

  pkg "RemotixAgent-#{version}.pkg"

  uninstall pkgutil:    [
                          'com.nulana.rxagentmac.daemon',
                          'com.nulana.rxagentmac',
                        ],
            signal:     [
                          ['KILL', 'com.nulana.rxagentmac.user'],
                          ['KILL', 'com.nulana.rxagentmac'],
                        ],
            launchctl:  [
                          'com.nulana.rxagentmac.user',
                          'com.nulana.rxagentmac.daemon',
                          'com.nulana.rxagentmac.gui',
                          'com.nulana.rxagentmac.rc',
                        ],
            login_item: 'Remotix Agent',
            quit:       'com.nulana.rxagentmac',
            delete:     [
                          '/Library/LaunchAgents/com.nulana.rxagentmac.user.plist',
                          '/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist',
                        ]
end
