cask 'inboxer' do
  version '1.3.2'
  sha256 'a6e66175b53656ccf2965aae0e8f880a9470ffafeae1b0b72e78b170dd08daf8'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer/'

  app 'inboxer.app'
end
