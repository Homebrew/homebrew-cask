cask :v1 => 'owncloud' do
  version '1.8.1.2335'
  sha256 'ff02fec2bf90a5f1e5d3138370758ecf2a29d901578f3b3c7f9e01ebf1218c82'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'https://owncloud.com/'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
