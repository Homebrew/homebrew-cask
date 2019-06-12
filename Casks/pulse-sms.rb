cask 'pulse-sms' do
  version '3.4.4'
  sha256 '424f41c7014df59e80c6edf5ba25a6058576be59ad5fca81558f8090f094bc57'

  # github.com/klinker-apps/messenger-desktop was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker-apps/messenger-desktop/releases.atom'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/'

  app 'Pulse SMS.app'
end
