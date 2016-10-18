cask 'crashplan' do
  version '4.8.0'
  sha256 'fd0189c9ab40e77d5b3aee653ac052002754133fe4f361e0b7c088dae44ca271'

  # crashplan.com was verified as official when first introduced to the cask
  url "https://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
