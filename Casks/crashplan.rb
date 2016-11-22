cask 'crashplan' do
  version '4.8.0'
  sha256 '42103d8a151dd36cdf3a96ce541abc8e9d47a25f9e050d9044a3607332295f3a'

  url "https://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.crashplan.com/'

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
