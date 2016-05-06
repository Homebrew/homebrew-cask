cask 'crashplan' do
  version '4.6.0'
  sha256 'a2415e9a3fbb6c2226b5a5b1745a0388dfa6b222a80c6814d3cf33ea042cc20e'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :gratis

  pkg 'Install CrashPlan.pkg'

  uninstall script:  'Uninstall.app/Contents/Resources/uninstall.sh',
            pkgutil: 'com.crashplan.app.pkg'
end
