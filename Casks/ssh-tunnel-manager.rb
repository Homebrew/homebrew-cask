cask 'ssh-tunnel-manager' do
  version '227.007,1476730358'
  sha256 '11c8b7ca6f3a79b2cefdfc665a6cc6d5aaf2dac199e9380f44c3e1aea191c41a'

  # dl.devmate.com/org.tynsoe.sshtunnelmanager was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.sshtunnelmanager/#{version.before_comma}/#{version.after_comma}/SSHTunnelManager-#{version.before_comma}.zip"
  name 'SSH Tunnel Manager'
  homepage 'https://www.tynsoe.org/v2/stm/'

  app 'SSH Tunnel Manager.app'

  zap trash: '~/Library/Preferences/org.tynsoe.sshtunnelmanager.plist'
end
