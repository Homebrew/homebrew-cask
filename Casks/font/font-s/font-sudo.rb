cask "font-sudo" do
  version "1.2"
  sha256 "161a8d81f882063fe54302c3fe0b2ce9bfc14065b6e1457278595826c41d6dc3"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip"
  name "Sudo"
  homepage "https://github.com/jenskutilek/sudo-font/"

  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
