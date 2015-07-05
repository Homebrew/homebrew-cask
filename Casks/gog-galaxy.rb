cask :v1 => 'gog-galaxy' do
  version '1.0.5.11'
  sha256 '1adba93ef842bff2ecf40de423abb610e215d4e40536a622e16e8d008881057b'

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
