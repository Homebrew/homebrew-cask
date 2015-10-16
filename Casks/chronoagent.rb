cask :v1 => 'chronoagent' do
  version :latest
  sha256 :no_check

  url 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  name 'ChronoAgent'
  homepage 'http://www.econtechnologies.com'
  license :commercial

  pkg 'Install.pkg'

  uninstall :pkgutil => 'com.econtechnologies.pkg.ChronoAgent'
end
