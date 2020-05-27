cask 'jitsi-meet' do
  version '2.1.1'
  sha256 '9743b3637407ddb17baf6733948ca521bdc9379365dfb91ce07af99e749df2bf'

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  appcast 'https://github.com/jitsi/jitsi-meet-electron/releases.atom'
  name 'Jitsi Meet'
  homepage 'https://github.com/jitsi/jitsi-meet-electron'

  app 'Jitsi Meet.app'

  zap trash: [
               '~/Library/Application Support/Jitsi Meet',
               '~/Library/Logs/Jitsi Meet',
             ]
end
