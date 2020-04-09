cask 'jitsi-meet' do
  version '2.0.0'
  sha256 '307e31c314f109408d1cf8da5020a133a5afb3c4397771e4e1af8a9ab1557d8b'

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
