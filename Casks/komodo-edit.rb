cask 'komodo-edit' do
  version '9.3.2-16460'
  sha256 'a6163361094615efb5d6f8ca3c0057cdb0be8a4bdd46eb916254cd36169c4083'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
