cask 'monitorcontrol' do
  version '2.0.0'
  sha256 '29b71d2c19f63a8f03923dd50c8e9ba59216486604a4fe11a0b0d85390b5e307'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  depends_on macos: '>= :sierra'

  app 'MonitorControl.app'
end
