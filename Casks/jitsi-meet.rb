cask 'jitsi-meet' do
  version '2.0.2'
  sha256 'ae42f86862762d73e3f7a091c76b79626a2ca4d8604db203e4b92e59582dd5bb'

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
