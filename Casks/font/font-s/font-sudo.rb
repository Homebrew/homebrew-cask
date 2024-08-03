cask "font-sudo" do
  version "1.4"
  sha256 "cbb84bbfd5394734800f6156baf5253c03609ba871d971d4f7bd74f24effc9d5"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip"
  name "Sudo"
  homepage "https://github.com/jenskutilek/sudo-font/"

  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
