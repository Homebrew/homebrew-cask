cask "font-sudo" do
  version "3.4"
  sha256 "f2b36bbb358f52e1dd83d1e5a252408363a7b97906cd710d890fc086c7ea8ed3"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip",
      verified: "github.com/jenskutilek/sudo-font/"
  name "Sudo"
  homepage "https://www.kutilek.de/sudo-font/"

  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
