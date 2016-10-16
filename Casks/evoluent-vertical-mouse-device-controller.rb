cask 'evoluent-vertical-mouse-device-controller' do
  version '1.1.0'
  sha256 'd70f1f2203a099befb96405fdffa320e3a37980becc0a3cad9fbfed72070c462'

  url "https://evoluent.com/download/EvoluentVerticalMouseDeviceController#{version}f1_10_6.dmg"
  name 'Evoluent Vertical Mouse Device Controller'
  homepage 'https://evoluent.com'

  pkg 'Evoluent VerticalMouse Device Controller.pkg'

  uninstall launchctl: 'com.evoluent.agent',
            pkgutil:   'com.evoluent.pkg.Installer'
end
