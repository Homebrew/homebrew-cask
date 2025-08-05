cask "font-hackgen-nerd" do
  version "2.10.0"
  sha256 "f8abd483d5edfad88a78ed511978f43c83b43c48e364aa29ebe4a68217474428"

  url "https://github.com/yuru7/HackGen/releases/download/v#{version}/HackGen_NF_v#{version}.zip"
  name "HackGenNerd"
  homepage "https://github.com/yuru7/HackGen"

  font "HackGen_NF_v#{version}/HackGen35ConsoleNF-Bold.ttf"
  font "HackGen_NF_v#{version}/HackGen35ConsoleNF-Regular.ttf"
  font "HackGen_NF_v#{version}/HackGenConsoleNF-Bold.ttf"
  font "HackGen_NF_v#{version}/HackGenConsoleNF-Regular.ttf"

  # No zap stanza required
end
