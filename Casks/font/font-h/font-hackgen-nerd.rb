cask "font-hackgen-nerd" do
  version "2.9.1"
  sha256 "1fd174866c7bcbe1cc09ebef74f9246a21664fedbb9c9ced349a328ab6357f0d"

  url "https://github.com/yuru7/HackGen/releases/download/v#{version}/HackGen_NF_v#{version}.zip"
  name "HackGenNerd"
  homepage "https://github.com/yuru7/HackGen"

  font "HackGen_NF_v#{version}/HackGen35ConsoleNF-Bold.ttf"
  font "HackGen_NF_v#{version}/HackGen35ConsoleNF-Regular.ttf"
  font "HackGen_NF_v#{version}/HackGenConsoleNF-Bold.ttf"
  font "HackGen_NF_v#{version}/HackGenConsoleNF-Regular.ttf"

  # No zap stanza required
end
