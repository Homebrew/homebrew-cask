cask 'cisco-webex-teams' do
  version :latest
  sha256 :no_check

  url 'http://www.webex.com/downloads/WebexTeams.dmg'
  name 'Cisco Systems Webex Teams'
  homepage 'https://www.webex.com/products/teams/index.html'

  depends_on macos: '>= :mavericks'

  app 'Webex Teams.app'

  uninstall signal: [
                      ['TERM', 'Cisco-Systems.Webex-Teams'],
                    ]

  zap trash: [
               '~/Library/Preferences/Cisco-Systems.Webex-Teams.plist',
               '~/Library/Caches/Cisco-Systems.Webex-Teams',
               '~/Library/Logs/Webex-Teams',
             ]
end
