cask 'jubler' do
  version '5.0.5'
  sha256 '363f272cc1e15e02cf3e28935b9b2fdd91c43b93b2d1afef281e500c158b8bcd'

  # sourceforge.net/jubler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jubler/Jubler-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/jubler/rss',
          checkpoint: 'e53b10d79d2f486772e1293517212cdef19be67cf76244880dcba34d944343e3'
  name 'Jubler'
  homepage 'http://www.jubler.org/'

  app 'Jubler.app'

  caveats do
    depends_on_java
  end
end
