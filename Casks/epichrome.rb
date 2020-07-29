cask 'epichrome' do
  version '2.3.2'
  sha256 '91b804ea80721f7da7f2a65cfb51c3b6ca898664ee0108f4582e8a83ea9cdf3d'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: 'org.epichrome.Epichrome'
end
