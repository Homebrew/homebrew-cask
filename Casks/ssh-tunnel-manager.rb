cask 'ssh-tunnel-manager' do
  version '221.003,1455813213'
  sha256 '2daf9406d9107961011c3d845841be751a27623e08211f837cd80a445f477aa7'

  # dl.devmate.com/org.tynsoe.sshtunnelmanager was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.sshtunnelmanager/#{version.before_comma}/#{version.after_comma}/SSHTunnelManager-#{version.before_comma}.zip"
  name 'SSH Tunnel Manager'
  homepage 'http://projects.tynsoe.org/en/stm/'
  license :gratis

  app 'SSH Tunnel Manager.app'
end
