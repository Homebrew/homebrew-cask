cask 'remotix-agent' do
  version '1.0.6'
  sha256 '66ecec55fa40ead964ad8da472c99d4eda3a1cbf65e60e531f0fd790f5743b11'

  url 'https://downloads.remotixcloud.com/agent-mac/RemotixAgent.pkg'
  name 'Remotix Agent'
  homepage 'https://remotixcloud.com/'

  auto_updates true

  pkg 'RemotixAgent.pkg'

  uninstall pkgutil:    [
                          'com.nuana.rxagentmac.daemon',
                          'com.nulana.rxagentmac',
                        ],
            launchctl:  [
                          'com.nulana.rxagentmac.daemon',
                          'com.nulana.rxagentmac.user',
                        ],
            quit:       [
                          'com.nulana.rxagentmac.*',
                          'com.nulana.rxagentmac.user',
                        ],
            login_item: 'Remotix Agent',
            delete:     [
                          '/Library/LaunchAgents/com.nulana.rxagentmac.user.plist',
                          '/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist',
                        ]
end
