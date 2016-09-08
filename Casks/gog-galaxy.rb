cask 'gog-galaxy' do
  version '1.1.15.13'
  sha256 '7328ec6291fdfa34419194998f21328f23ed08c35caf748cd864bc431ea641cc'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
