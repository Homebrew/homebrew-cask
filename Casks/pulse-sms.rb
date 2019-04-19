cask 'pulse-sms' do
  version '3.3.1'
  sha256 'cbe492f2b3020d41e646e05696567e479136e75d5e7402b7b052cf6916924823'

  # github.com/klinker-apps/messenger-desktop was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker-apps/messenger-desktop/releases.atom'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/'

  app 'Pulse SMS.app'
end
