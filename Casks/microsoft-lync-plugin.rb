cask :v1 => 'microsoft-lync-plugin' do
  version :latest
  sha256 :no_check

  url 'https://lync12.lyncweb.microsoft.com/lwa/Plugins/LWAPluginInstaller.pkg'
  homepage 'http://office.microsoft.com/Lync'
  license :unknown    # todo: improve this machine-generated value

  pkg 'LWAPluginInstaller.pkg'

  uninstall :pkgutil => 'Lync.Client.LwaPluginInstaller.*.LwaPlugin.pkg'
end
