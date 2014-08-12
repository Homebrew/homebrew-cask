class Nmap < Cask
  version '6.46'
  sha256 '03bd80a10f12fbf702766afe28fc99f953b68c74c4ec8b346349ae2a4fc65033'

  url 'http://nmap.org/dist/nmap-6.46.dmg'
  homepage 'http://nmap.org/'

  install 'nmap-6.46.mpkg'
  uninstall :pkgutil => 'org.insecure.nmap646.*.pkg'
end
