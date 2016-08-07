cask 'crashplan' do
  version '4.7.0'
  sha256 'ea138c87bb158fa47ba2aa5c7f5bcd43cccb9a7db9d83ace4a6954d1ae678d55'

  # crashplan.com was verified as official when first introduced to the cask
  url "https://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :gratis

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
