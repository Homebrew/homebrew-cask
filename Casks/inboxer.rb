cask 'inboxer' do
  version '1.2.1'
  sha256 '1a57278556e8d65b6b0f0330f0d64c8308c8bc7028fce592c51f969726ea29b3'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer/'

  app 'inboxer.app'
end
