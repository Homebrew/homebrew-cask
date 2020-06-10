cask 'jitsi-meet' do
  version '2.2.0'
  sha256 '4c7cf22afbcff85a74ac01076f048564119e572476c0754d26ba185340b97996'

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
