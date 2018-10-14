cask 'inboxer' do
  version '1.1.4'
  sha256 '680ee3b321e485ead62338d81e43ee25d077d5c3451a724867c741d287efc47f'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer/'

  app 'inboxer.app'
end
