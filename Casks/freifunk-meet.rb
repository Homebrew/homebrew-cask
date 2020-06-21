cask 'freifunk-meet' do
  version :latest
  sha256 :no_check

  url 'https://github.com/FreifunkMUC/jitsi-meet-electron/releases/latest/download/ffmuc-meet.dmg'
  appcast 'https://github.com/FreifunkMUC/jitsi-meet-electron/releases.atom'
  name 'FreifunkMeet'
  homepage 'https://github.com/FreifunkMUC/jitsi-meet-electron'

  app 'FreifunkMeet.app'

  zap trash: [
               '~/Library/Application Support/FreifunkMeet',
               '~/Library/Logs/FreifunkMeet',
             ]
end
