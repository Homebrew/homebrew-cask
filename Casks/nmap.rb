cask 'nmap' do
  version '7.01'
  sha256 'c121b30d0bb3296d3c89ba9df7c89c7624f2b112e4092130da30a87ede2f7243'

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name 'Nmap'
  homepage 'https://nmap.org/'
  license :gpl

  pkg "nmap-#{version}.mpkg"

  uninstall pkgutil: 'org.insecure.nmap*.pkg'
end
