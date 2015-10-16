cask :v1 => 'gog-galaxy' do
  version '1.1.2.120'
  sha256 '050f743b8feaab344c03e6a322c484f76a34a36a42d7e937e0ad93fffef11be3'

  url "http://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'
  license :gratis
  tags :vendor => 'GOG'

  pkg "galaxy_client_#{version}.pkg"

  uninstall :pkgutil => "com.gog.galaxy.galaxy_client_#{version}.pkg",
            :delete => '/Applications/GalaxyClient.app'

  depends_on :macos => '>= :mountain_lion'
end
