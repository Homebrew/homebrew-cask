class Crashplan < Cask
  url 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.6.3_Mac.dmg'
  homepage 'http://www.crashplan.com/'
  version '3.6.3'
  sha256 '85d49c6742e390a24f0a0931d3c2cbb9ab077a1cd5361d980992ba2908acbd23'
  install 'Install CrashPlan.pkg'
  uninstall(
    :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
    :pkgutil => 'com.crashplan.app.pkg'
  )
end
