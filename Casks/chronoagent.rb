cask :v1 => 'chronoagent' do
  version :latest
  sha256 :no_check

  url 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  homepage 'http://www.econtechnologies.com'
  license :unknown

  pkg 'Install.pkg'

  uninstall :pkgutil => 'com.econtechnologies.pkg.ChronoAgent'
end
