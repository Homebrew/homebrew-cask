cask 'nmap' do
  version '7.12'
  sha256 '522c3eb2644b9d12094012278b3c851e0b8d5cc5423b9242ce8c710715e5543d'

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name 'Nmap'
  homepage 'https://nmap.org/'
  license :gpl

  pkg "nmap-#{version}.mpkg"

  uninstall pkgutil: 'org.insecure.nmap*.pkg'
end
