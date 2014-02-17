class Crashplan < Cask
  url 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.6.3_Mac.dmg'
  homepage 'http://www.crashplan.com/'
  version '3.6.3'
  sha1 '19bdfd407e86a26f852d36d317d01418597159a8'
  install 'Install CrashPlan.pkg'
  uninstall(
    :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
    :pkgutil => 'com.crashplan.app.pkg'
  )
end
