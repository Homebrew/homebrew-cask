cask "font-sudo" do
  version "1.3"
  sha256 "b7e2e9c6a22daf0139d759bea2fdefe745cc8b69ba216e6dab660a710dcb1eed"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip"
  name "Sudo"
  homepage "https://github.com/jenskutilek/sudo-font/"

  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
