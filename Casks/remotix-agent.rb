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
                          ['TERM', 'com.nulana.rxagentmac.user'],
                          ['QUIT', 'com.nulana.rxagentmac.user'],
                          ['INT', 'com.nulana.rxagentmac.user'],
                          ['HUP', 'com.nulana.rxagentmac.user'],
                          ['KILL', 'com.nulana.rxagentmac.user'],
                          ['TERM', 'com.nulana.rxagentmac'],
                          ['QUIT', 'com.nulana.rxagentmac'],
                          ['INT', 'com.nulana.rxagentmac'],
                          ['HUP', 'com.nulana.rxagentmac'],
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
