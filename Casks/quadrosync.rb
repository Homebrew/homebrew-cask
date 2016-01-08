cask 'quadrosync' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage.
  url 'https://s3-eu-west-1.amazonaws.com/quadro-downloads/daemon/mac/QuadroSync_mac.dmg'
  name 'QuadroSync'
  homepage 'http://quadro.me/sync'
  license :gratis

  installer :manual => 'QuadroInstaller.app'

  uninstall :quit       => [
                             'com.quadro.QuadroSync',
                             'com.quadro.QuadroNGui',
                           ],
            :delete     => [
                             '/Applications/QuadroSync.app',
                             '/Applications/QuadroNGui.app',
                           ],
            :launchctl  => 'com.quadro.QuadroInstaller.HelperTool',
            :login_item => 'QuadroSync'

  zap :delete => '/Library/Application Support/Quadro'
end
