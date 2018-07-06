cask 'jubler' do
  version '6.0'
  sha256 'ed330203ce9a16ee5fa8708fa89b66907e62475f089f463adc6fb51db2f6a4a0'

  # sourceforge.net/jubler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jubler/Jubler-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/jubler/rss'
  name 'Jubler'
  homepage 'http://www.jubler.org/'

  app 'Jubler.app'

  caveats do
    depends_on_java
  end
end
