cask 'gog-galaxy' do
  version '1.1.5.27'
  sha256 '8dd609a4aa7b9174f3083d83888e5d9016d2874fa05bf6b5b904c4cce1bd74f3'

  url "http://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
