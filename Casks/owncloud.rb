cask :v1 => 'owncloud' do
  version '1.7.1.1655'
  sha256 '31cff973611823b5306544fe394539c4bb167645fb14622125443967f20014d4'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  homepage 'http://owncloud.com'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
