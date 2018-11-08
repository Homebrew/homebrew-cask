cask 'pennywise' do
  version '0.6.1'
  sha256 '258a35cf13ece1e1b6f29ee636986a822cf374e7441cd8dc9c784c032121c75a'

  url "https://github.com/kamranahmedse/pennywise/releases/download/#{version}/Pennywise-#{version}-mac.zip"
  appcast 'https://github.com/kamranahmedse/pennywise/releases.atom'
  name 'Pennywise'
  homepage 'https://github.com/kamranahmedse/pennywise'

  app 'Pennywise.app'
end
