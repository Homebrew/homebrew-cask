cask 'pulse-sms' do
  version '3.4.2'
  sha256 '6ade8a3d866b47f219a3369efe192331e177ee1748149c5a5e987e16e7f65639'

  # github.com/klinker-apps/messenger-desktop was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker-apps/messenger-desktop/releases.atom'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/'

  app 'Pulse SMS.app'
end
