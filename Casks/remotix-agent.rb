cask 'remotix-agent' do
  version '1.2.9'
  sha256 '2b76536a853462f3d60fc7e243fe2a64f904b47c2a7935d123f890a93f9cacf6'

  url 'https://downloads.remotixcloud.com/agent-mac/RemotixAgent.pkg'
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
                        ],
            login_item: 'Remotix Agent',
            delete:     [
                          '/Library/LaunchAgents/com.nulana.rxagentmac.user.plist',
                          '/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist',
                        ]
end
