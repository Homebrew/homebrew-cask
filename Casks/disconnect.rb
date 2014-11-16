cask :v1 => 'disconnect' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/disconnect-desktop/Disconnect+Desktop.pkg'
  homepage 'https://disconnect.me'

  pkg 'Disconnect+Desktop.pkg'
  uninstall :pkgutil => [
                         'com.disconnect.pkg.DisconnectDependencies',
                         'com.disconnect.pkg.DisconnectDesktop',
                        ]
end
