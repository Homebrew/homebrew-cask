cask 'epichrome' do
  version '2.3.0'
  sha256 'a1967f9cb554893a2745cb14a4853106341891d4a40c4b97f58cc3d544dc90f1'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: 'org.epichrome.Epichrome'
end
