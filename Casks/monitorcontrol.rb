cask 'monitorcontrol' do
  version '1.7.0'
  sha256 '8577bfc1d7d187acaa913a36c8854d095eaa66949a827c4d7fbe1468f2e9382a'

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  appcast 'https://github.com/the0neyouseek/MonitorControl/releases.atom'
  name 'MonitorControl'
  homepage 'https://github.com/the0neyouseek/MonitorControl'

  depends_on macos: '>= :sierra'

  app 'MonitorControl.app'
end
