cask 'pulse-sms' do
  version '2.3.0'
  sha256 :no_check

  # github.com/klinker24/messenger-desktop/releases was verified as official when first introduced to the cask
  url "https://github.com/klinker24/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast 'https://github.com/klinker24/messenger-desktop/releases.atom',
          checkpoint: 'a3bbe50784c65a9ddeccebe963b143682b22c1ff0ea508358668a994eca1de1b'
  name 'Pulse SMS'
  homepage 'https://messenger.klinkerapps.com/overview/index.html'

  app 'Pulse SMS.app'
end
