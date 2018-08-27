cask 'jubler' do
  version '6.0.2'
  sha256 'd0d01cf027c745a2aaf3f88c1e00f003e1dacae8108564ebe8f158dfa8c2630c'

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
