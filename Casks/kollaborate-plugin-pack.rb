cask 'kollaborate-plugin-pack' do
  version '1.0.6.0'
  sha256 '74d11ff0b93650fc67e48959e377fa9ea2d7cb029eb6e79dc07b4808d8c1ab9d'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabplugins?version=#{version.no_dots}"
  name 'Kollaborate Plugin Pack'
  homepage 'https://www.kollaborate.tv/resources'

  installer manual: 'Install Kollaborate Plugin Pack.pkg'

  uninstall pkgutil: [
                       'com.digitalrebellion.KollabPluginPack',
                       'com.digitalrebellion.pkg.KollabPluginPack.FCPX',
                       'com.digitalrebellion.pkg.KollabPluginPack.Premiere',
                       'com.digitalrebellion.pkg.KollabPluginPack.SystemPlugins',
                     ]
end
