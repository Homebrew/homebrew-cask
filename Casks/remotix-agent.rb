cask 'remotix-agent' do
  version '1.3.4'
  sha256 'aca5c401ad4186323f5a30fd574b86a02a540dd9bc4d017377616c3ea5ba46ea'

  url 'https://downloads.remotixcloud.com/agent-mac/RemotixAgent.pkg'
  appcast 'https://remotixcloud.com/downloads/'
  name 'Remotix Agent'
  homepage 'https://remotixcloud.com/'

  auto_updates true

  pkg 'RemotixAgent.pkg'

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
            delete:     [
                          '/Library/LaunchAgents/com.nulana.rxagentmac.user.plist',
                          '/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist',
                        ]
end
