cask 'ssh-tunnel-manager' do
  version '226.001,1469934770'
  sha256 'a10cd2eda221f2771b4e9be618a24844e462549844bffe73e110d183df7dece9'

  # dl.devmate.com/org.tynsoe.sshtunnelmanager was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.sshtunnelmanager/#{version.before_comma}/#{version.after_comma}/SSHTunnelManager-#{version.before_comma}.zip"
  name 'SSH Tunnel Manager'
  homepage 'https://www.tynsoe.org/v2/stm/'

  app 'SSH Tunnel Manager.app'
end
