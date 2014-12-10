cask :v1 => 'nmap' do
  version '6.47'
  sha256 'eb277f24d4d77d323400c23c5e0b4296143524dc2e4ddbe844cc3c4c7fc878d2'

  url "http://nmap.org/dist/nmap-#{version}.dmg"
  homepage 'http://nmap.org/'
  license :unknown    # todo: improve this machine-generated value

  pkg "nmap-#{version}.mpkg"

  uninstall :pkgutil => 'org.insecure.nmap*.pkg'
end
