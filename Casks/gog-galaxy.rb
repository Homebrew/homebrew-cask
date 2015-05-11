cask :v1 => 'gog-galaxy' do
  version '1.0.0.836'
  sha256 '878319173e0f157981fd3d5009e451653024bdb8e3b4f0ff5565c491ba815f4d'

  url "http://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'http://www.gog.com/galaxy'
  license :gratis
  tags :vendor => 'GOG'

  pkg "galaxy_client_#{version}.pkg"

  uninstall :pkgutil => "com.gog.galaxy.galaxy_client_#{version}.pkg",
            :delete => '/Applications/GalaxyClient.app'
end
