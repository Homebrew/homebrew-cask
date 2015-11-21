cask :v1 => 'nmap' do
  version '7.00'
  sha256 'f96f8dd4f50039b40a524ec1d4b467d60fefd3a74018df4e7f5fa88cb85bcaa2'

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name 'Nmap'
  homepage 'https://nmap.org/'
  license :gpl

  pkg "nmap-#{version}.mpkg"

  uninstall :pkgutil => 'org.insecure.nmap*.pkg'
end
