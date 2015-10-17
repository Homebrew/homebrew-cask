cask :v1 => 'crashplan' do
  version '4.4.1'
  sha256 '62dfbfceea51bd71fcb51e740c0e168dc9f7a0907c04e9011c123bde11d0b821'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install CrashPlan.pkg'

  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
