cask :v1 => 'microsoft-lync-plugin' do
  version :latest
  sha256 :no_check

  url 'https://lync12.lyncweb.microsoft.com/lwa/Plugins/LWAPluginInstaller.pkg'
  homepage 'http://office.microsoft.com/Lync'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'LWAPluginInstaller.pkg'

  uninstall :pkgutil => [
                         'Lync.Client.LwaPluginInstaller.*.LwaPlugin.pkg',
                         'Lync.Client.Plugin'
                        ]
end
