cask 'jubler' do
  version '5.0.5'
  sha256 '363f272cc1e15e02cf3e28935b9b2fdd91c43b93b2d1afef281e500c158b8bcd'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/jubler/Jubler-#{version}.dmg"
  name 'Jubler'
  homepage 'http://www.jubler.org/'
  license :gpl

  app 'Jubler.app'

  caveats do
    depends_on_java
  end
end
