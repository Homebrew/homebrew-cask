cask 'inboxer' do
  version '1.2.0'
  sha256 'a7feacae9c555731a3817d7bbb277965e19d4fd0da650aded7a77d5bb56a9fb0'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/Inboxer-#{version}.dmg"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer/'

  app 'inboxer.app'
end
