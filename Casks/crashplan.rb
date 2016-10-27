cask 'crashplan' do
  version '4.8.0'
  sha256 '43ae48b8ae5c19312cdc4be561774f3e2fde64a483534f8de61a68403b16335f'

  url "https://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://crashplan.com/'

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
