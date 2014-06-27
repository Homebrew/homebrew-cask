class Crashplan < Cask
  version '3.6.3'
  sha256 'af6959a5a2e8584195fa7381014ba462ced114763995b50266d6353a95b84a7d'

  url 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.6.3_Mac.dmg'
  homepage 'http://www.crashplan.com/'

  install 'Install CrashPlan.pkg'
  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
