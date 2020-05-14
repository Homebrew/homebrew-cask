cask 'remotix-agent' do
  version '1.3.5'
  sha256 '6bc975c7dc4e49edaba5c918009f0bc80518d9fdebd91e7da11cb2fe25239349'

  url 'https://downloads.remotixcloud.com/agent-mac/RemotixAgent.pkg'
  appcast 'https://remotix.com/downloads-mac/'
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
            quit:       'com.nulana.rxagentmac',
            delete:     [
                          '/Library/LaunchAgents/com.nulana.rxagentmac.user.plist',
                          '/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist',
                        ]
end
