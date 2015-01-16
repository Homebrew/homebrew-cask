cask :v1 => 'crashplan' do
  version '3.7.0'
  sha256 '1ecce968c0b198941d98392422fb9ea7f15e6cb0334d670b3f97f796f2a54b1c'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  homepage 'http://www.crashplan.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install CrashPlan.pkg'

  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
