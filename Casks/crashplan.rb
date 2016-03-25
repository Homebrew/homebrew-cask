cask 'crashplan' do
  version '4.6.0'
  sha256 '7bbbe080c33098b057896f4b1303ed7d196f4f16bbd0ee8b33d363d92dda4a73'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :gratis

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
