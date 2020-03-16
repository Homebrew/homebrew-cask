cask 'remotix-agent' do
  version '1.3.2'
  sha256 '1c499be234ddcd11604e500645e32d3cfbe32b6d65f6e8a65ebd5b0692d4cd1e'

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
