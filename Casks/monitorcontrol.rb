cask 'monitorcontrol' do
  version '1.7.1'
  sha256 'c2102be6604e9f7e9e3261d9c77c0ade251d028e776f8c58fb567a81cce20768'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  depends_on macos: '>= :sierra'

  app 'MonitorControl.app'
end
