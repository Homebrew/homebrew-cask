cask 'crashplan' do
  version '4.7.0'
  sha256 'c36d7280038e576f70bce12f11cdfe6c2519c34d4b21f1681c59bac439a2c283'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :gratis

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
