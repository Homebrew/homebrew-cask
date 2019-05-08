cask 'monitorcontrol' do
  version '1.5.0'
  sha256 '275eaffb76b3f309bf2b58314a74c477cdf0f2384bc7a6cea52a0cffad5c5cee'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  app 'MonitorControl.app'
end
