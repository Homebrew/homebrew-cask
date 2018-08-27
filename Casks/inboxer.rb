cask 'inboxer' do
  version '1.1.3'
  sha256 '533c5f52fc56ea61434d92cbcf6b475159a5c15b7f96304a748e84df4a6cdc2b'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
