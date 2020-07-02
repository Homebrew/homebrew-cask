cask 'jitsi-meet' do
  version '2.3.0'
  sha256 '65cc4a529a3f76e36d75a40f0c03987c46a3874f64a6bd8e775ff6ba85f78747'

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
