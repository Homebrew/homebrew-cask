cask 'microsoft-lync-plugin' do
  version :latest
  sha256 :no_check

  url 'https://lync12.lyncweb.microsoft.com/lwa/Plugins/LWAPluginInstaller.pkg'
  name 'Microsoft Lync Web App Plug-in'
  homepage 'https://office.microsoft.com/Lync'

  pkg 'LWAPluginInstaller.pkg'

  uninstall pkgutil: [
                       'Lync.Client.LwaPluginInstaller.*.LwaPlugin.pkg',
                       'Lync.Client.Plugin',
                     ]

  caveats do
    discontinued
  end
end
