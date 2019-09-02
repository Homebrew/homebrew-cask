cask 'monitorcontrol' do
  version '1.6.0'
  sha256 '9239f0b163c6a49b127395c3ea64b36bc481cf9737b7a99e921e021ca192d3dd'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  depends_on macos: '>= :sierra'

  app 'MonitorControl.app'
end
