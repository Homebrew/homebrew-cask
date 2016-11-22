cask 'gog-galaxy' do
  version '1.1.20.10'
  sha256 'a745d849234fcf461e0578392a2f5bac389a08451d88e71567599a15fe41a373'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall pkgutil: "com.gog.galaxy.galaxy_client_#{version}.pkg",
            delete:  '/Applications/GalaxyClient.app'
end
