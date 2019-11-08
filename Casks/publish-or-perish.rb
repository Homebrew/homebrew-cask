cask 'publish-or-perish' do
  version ':latest'
  sha256 'a27de8ba3564beebc35bb73f806379151252f3dc869b79bca22e67096efa600b'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  name 'Publish or Perish'
  name 'Harzing\'s Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
