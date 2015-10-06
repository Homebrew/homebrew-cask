cask :v1 => 'crashplan' do
  version '4.4.1'
  sha256 'd8110a9e65b93d3fc52c661453d9e997526ea57c40e1fcc4f41430476135447c'

  url "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.code42.com/crashplan/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install CrashPlan.pkg'

  uninstall :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :pkgutil => 'com.crashplan.app.pkg'
end
