class MicrosoftLyncPlugin < Cask
  version 'latest'
  sha256 :no_check

  url 'https://lync12.lyncweb.microsoft.com//lwa/Plugins/LWAPluginInstaller.pkg'
  homepage 'http://office.microsoft.com/Lync'

  install 'LWAPluginInstaller.pkg'
  uninstall :pkgutil => 'Lync.Client.LwaPluginInstaller.*.LwaPlugin.pkg'
end
