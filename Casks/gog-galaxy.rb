cask 'gog-galaxy' do
  version '1.1.8.10'
  sha256 '567b009a2ba293f88921ea6e68f20aeb45135088486efe54bae6aa9bc0e0a8f5'

  url "http://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
