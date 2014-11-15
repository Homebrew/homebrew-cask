cask :v1 => 'crashplan' do
  version '3.6.3'
  sha256 'c3bb61fda36d777395748a6c6946085255e8ffa64c1538c453888e0de8ce2b73'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  homepage 'http://www.crashplan.com/'
  license :unknown

  pkg 'Install CrashPlan.pkg'
  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
