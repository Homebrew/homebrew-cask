cask 'epichrome' do
  version '2.3.3'
  sha256 'aec344b2ab69351ed0447bb73ef76e94e996515533386aa91025d01e9a1814bd'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: 'org.epichrome.Epichrome'
end
