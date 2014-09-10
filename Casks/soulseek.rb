class Soulseek < Cask
  version '2014-6-15'
  sha256 'fb583b2ac25e429e5db89931d208a86c7f03177140f944b31936daa02778dc4f'

  url 'http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-2014-6-15.pkg'
  homepage 'http://www.soulseekqt.net/'

  pkg 'SoulseekQt-2014-6-15.pkg'
  uninstall :pkgutil => 'com.soulseek.SoulseekQt.pkg'
end
