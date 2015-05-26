cask :v1 => 'gog-galaxy' do
  version '1.0.2.939'
  sha256 '2c46d7aafe862bc0b2aa6b4bc95490683f8ec80f96feffb7c6f7918e2203e4e7'

  url "http://cdn.gog.com/open/galaxy/client/installers/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'http://www.gog.com/galaxy'
  license :gratis
  tags :vendor => 'GOG'

  pkg "galaxy_client_#{version}.pkg"

  uninstall :pkgutil => "com.gog.galaxy.galaxy_client_#{version}.pkg",
            :delete => '/Applications/GalaxyClient.app'
end
