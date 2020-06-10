cask 'jabref' do
  version '5.0'
  sha256 'a02b02c1b54ebcfa5011e571800483d23d1774fb6117abff8e35055079e7d2e3'

  # github.com/JabRef/jabref/ was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom'
  name 'JabRef'
  homepage 'https://www.jabref.org/'

  app 'JabRef.app'
end
