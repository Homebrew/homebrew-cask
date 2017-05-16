cask 'evoluent-vertical-mouse-device-controller' do
  version '1.2.0'
  sha256 'bdb2e39608433d899c62ccbb34906944521f6619a918db29db308472585aed36'

  url "https://evoluent.com/download/EvoluentVerticalMouseDeviceController#{version}f2.dmg"
  name 'Evoluent Vertical Mouse Device Controller'
  homepage 'https://evoluent.com/'

  pkg 'Evoluent VerticalMouse Device Controller.pkg'

  uninstall launchctl: 'com.evoluent.agent',
            pkgutil:   'com.evoluent.pkg.Installer'
end
