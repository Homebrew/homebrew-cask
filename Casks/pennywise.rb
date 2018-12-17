cask 'pennywise' do
  version '0.6.3'
  sha256 '032a0fbcf1f37e74d7a83382c185d0f1cb29ed094005c42520c98a4030b65079'

  url "https://github.com/kamranahmedse/pennywise/releases/download/v#{version}/Pennywise-#{version}-mac.zip"
  appcast 'https://github.com/kamranahmedse/pennywise/releases.atom'
  name 'Pennywise'
  homepage 'https://github.com/kamranahmedse/pennywise'

  app 'Pennywise.app'
end
