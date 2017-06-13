cask 'kollaborate-plugin-pack' do
  version '1.1.2.0'
  sha256 'a0c1e814397696c609e33e0f89ba1aff762d3632a82276ebcd49670e734bcefc'

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
