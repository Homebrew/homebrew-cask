cask 'inboxer' do
  version '1.2.3'
  sha256 '751f4987476668778b060177cd185f8ed2f2a449303938194b67f0c6cad90f9a'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer/'

  app 'inboxer.app'
end
