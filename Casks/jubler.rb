cask 'jubler' do
  version '5.1'
  sha256 'db061825d731abc2eb96bfbed49df78f712d4b4c58c007d91f608ae670f19438'

  # sourceforge.net/jubler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jubler/Jubler-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/jubler/rss',
          checkpoint: 'f9945f5e48daf05111b8249b781c944388fecfa7ebce5bd228ac508097b9f195'
  name 'Jubler'
  homepage 'http://www.jubler.org/'

  app 'Jubler.app'

  caveats do
    depends_on_java
  end
end
