cask 'gog-galaxy' do
  version '1.1.25.24'
  sha256 'd66d90772bcc11a0bc1bdcdf74fc06af665cba2be82cde73b06f19682b94ebed'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
