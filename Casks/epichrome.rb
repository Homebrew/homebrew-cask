cask 'epichrome' do
  version '2.3.5'
  sha256 '8d7e3671ce9be3eccf388417fa8c4ec1e93e9ee88fd32567c1df36778b3d50bd'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: 'org.epichrome.Epichrome'
end
