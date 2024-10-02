cask "font-sudo" do
  version "2.0.0"
  sha256 "525fecc3b57428e9f996e21a5cbbcb80e23b1c7198c7692b2f75b2046effc081"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip"
  name "Sudo"
  homepage "https://github.com/jenskutilek/sudo-font/"

  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
