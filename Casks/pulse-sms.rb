cask 'pulse-sms' do
  version '3.0.1'
  sha256 '81543693032fe763e0f2344e176da4e01d0aa799610c6724818454eb0c7747e4'

  # github.com/klinker-apps/messenger-desktop was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker-apps/messenger-desktop/releases.atom'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/'

  app 'Pulse SMS.app'
end
