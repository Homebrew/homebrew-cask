cask "hopper-debugger-server" do
  version "2.7"
  sha256 "dd23a36d3ee52c972c251f692491878509beeadced79a85f170d8113de21dc28"

  url "https://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip",
      user_agent: :fake
  name "Hopper Debugger Server"
  homepage "https://www.hopperapp.com/HopperGDBServer/"

  livecheck do
    url "https://www.hopperapp.com/HopperGDBServer/appcast.xml"
    strategy :sparkle
  end

  app "Hopper Debugger Server.app"
end
