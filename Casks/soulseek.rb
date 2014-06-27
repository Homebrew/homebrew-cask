class Soulseek < Cask
  version '2014-4-11'
  sha256 'cfd1ece49b44beb0f8a8e4725152b93a36d641a4ae350ea5a7e7de4d6be79b46'

  url 'http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-2014-4-11.pkg'
  homepage 'http://www.soulseekqt.net/'

  install 'SoulseekQt-2014-4-11.pkg'
  uninstall :pkgutil => 'com.soulseek.SoulseekQt.pkg'
end
