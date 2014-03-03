class Crashplan < Cask
  url 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.6.3_Mac.dmg'
  homepage 'http://www.crashplan.com/'
  version '3.6.3'
  sha256 '50a15332c779d9dd6e9a3e4e20360f3baebafee93362e32e4c6621a3cc501f1d'
  install 'Install CrashPlan.pkg'
  uninstall(
    :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
    :pkgutil => 'com.crashplan.app.pkg'
  )
end
