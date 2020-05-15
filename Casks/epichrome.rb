cask 'epichrome' do
  version '2.3.1'
  sha256 '3d8a582b44e3a67497281d11c109f6fa7b4a5cdf9f5433a8a90762f9a4ebbdf3'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: 'org.epichrome.Epichrome'
end
