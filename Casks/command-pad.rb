cask "command-pad" do
  version "0.1.2"
  sha256 "c889b42e9ec648f0b8cfc2cf65b56f5c40fc139486ef236eaa73b29fcc47db6a"

  url "https://github.com/supnate/command-pad/releases/download/v#{version}/Command.Pad-#{version}.dmg"
  name "Command Pad"
  desc "Start and stop command-line tools easily and you can also monitor the output"
  homepage "https://github.com/supnate/command-pad"

  app "Command Pad.app"
end
