class Crashplan < Cask
  url 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.5.3_Mac.dmg'
  homepage 'http://www.crashplan.com/'
  version '3.5.3'
  sha1 'b5c9b304c7191f2dd5773e0c373c495726097d0d'
  install 'Install CrashPlan.pkg'
  uninstall(
    :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
    :pkgutil => 'com.crashplan.app.pkg'
  )
end
