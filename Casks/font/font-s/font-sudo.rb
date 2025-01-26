cask "font-sudo" do
  version "2.2"
  sha256 "b9a5d14348f4ea01dfe02a75d2c5181136d3cbf10277ae0f0b4115c40763f47b"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip",
      verified: "github.com/jenskutilek/sudo-font/"
  name "Sudo"
  homepage "https://www.kutilek.de/sudo-font/"

  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
