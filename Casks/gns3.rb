cask :v1 => 'gns3' do
  version '1.3.10'
  sha256 'd179aea68c897b5f0f58a825ca05edb3c5add421d79f27d91b1e3969bafe900a'

  # github.com is the officeal download host per the vendor homepage
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  name 'GNS3'
  homepage 'http://www.gns3.com'
  license :gpl

  app 'GNS3.app'

  uninstall :quit => 'net.gns3'

  zap :delete => [
                    '~/Library/Preferences/net.gns3.plist',
                    "~/.config/gns3.net",
                    '~/GNS3'
                ]

end
