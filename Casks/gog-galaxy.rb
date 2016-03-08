cask 'gog-galaxy' do
  version '1.1.5.27b'
  sha256 '5e9f58723bd7b7a56fe3fdfc72b0b67e98ba367d3ee1abcc216e1981bd8c7fe2'

  url "http://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
