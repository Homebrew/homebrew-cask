cask 'pulse-sms' do
  version '4.0.1'
  sha256 'c4c4eba957178266a5e0f4d101010da1737ee32052072abb910bbcd88d482c28'

  # github.com/klinker-apps/messenger-desktop was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker-apps/messenger-desktop/releases.atom'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/'

  app 'Pulse SMS.app'
end
