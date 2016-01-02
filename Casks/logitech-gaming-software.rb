cask 'logitech-gaming-software' do
  version '8.53.10'
  sha256 '60ce2aacf33ab523333328128ce96239e6e4bb90f6100d1d7d3d40fce28185a9'

  url "http://www.logitech.com/pub/techsupport/gaming/LogiGamingSetup_#{version}.mpkg"
  name 'Logitech Gaming Software'
  homepage 'http://www.logitech.com/en-us/support/gaming-software?section=downloads&bit=&osid=36'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "LogiGamingSetup_#{version}.mpkg"

  uninstall :script => '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh',
            :pkgutil => [
                        'com.logitech.gaming',
                        'com.logitech.lcdmanager',
                        ]

  caveats do
    reboot
  end
end
