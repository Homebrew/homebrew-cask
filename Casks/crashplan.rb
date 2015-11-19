cask :v1 => 'crashplan' do
  version '4.4.1'
  sha256 'eba9dbf8511f1195b2837701cdb094d7ac3b03bd36c2a3252392be63ae08cb21'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :gratis

  pkg 'Install CrashPlan.pkg'

  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
