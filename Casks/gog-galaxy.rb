cask 'gog-galaxy' do
  version '1.1.17.3'
  sha256 '1f60334cc0774943ac44ee3d35e05473034934868e9992a4065151ed5d35a557'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
