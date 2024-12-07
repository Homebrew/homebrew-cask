cask "font-sudo" do
  version "2.1"
  sha256 "4d7d108cb41dc9a8edf8b6912a192ff56dc810f058f76f499d2a732ea59e7223"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip"
  name "Sudo"
  homepage "https://github.com/jenskutilek/sudo-font/"

  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
