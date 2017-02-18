cask 'gog-galaxy' do
  version '1.1.27.1'
  sha256 'bb7bc4b210f6ab2d22fdb6c2c49f1ad1d41a46cace36369aa8e7762d463e6460'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
