cask 'hopper-debugger-server' do
  version '2.4'
  sha256 '32879ffedbe88d172aa59c1cdb32cdba024d842c20d705458ea4279f5bc18dab'

  url "https://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip",
      user_agent: :fake
  appcast 'https://www.hopperapp.com/HopperGDBServer/appcast.xml'
  name 'Hopper Debugger Server'
  homepage 'https://www.hopperapp.com/HopperGDBServer/'

  app 'Hopper Debugger Server.app'
end
