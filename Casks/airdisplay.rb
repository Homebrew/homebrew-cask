cask :v1 => 'airdisplay' do
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirDisplayInstaller.zip'
  name 'Air Display'
  appcast 'https://www.avatron.com/updates/software/airdisplay/appcast.xml',
          :sha256 => '5318742e7d9f7f4da9498e3100d8b5f92abc18a574988f1d5fa5a551ad0af062'
  homepage 'http://avatron.com/apps/air-display/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Air Display Installer.pkg'

  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
