cask :v1 => 'soulseek' do
  version '2014-8-31'
  sha256 'd62206bdd11a6ff9b63e648e6dafe3e52e100b26677b58b4a9c40ef9d73e4b8a'

  url "http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-#{version}.pkg"
  homepage 'http://www.soulseekqt.net/'
  license :unknown

  pkg "SoulseekQt-#{version}.pkg"

  uninstall :pkgutil => 'com.soulseek.SoulseekQt.pkg'
end
