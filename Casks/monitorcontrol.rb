cask 'monitorcontrol' do
  version '1.5.2'
  sha256 'e7f94ef75394da02475539838c881c5a5087acadb1aefefebc9a816b2f794fc9'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  depends_on macos: '>= :sierra'

  app 'MonitorControl.app'
end
