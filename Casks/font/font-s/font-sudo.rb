cask "font-sudo" do
  version "3.6"
  sha256 "af87d98bf53cc4957b50b9c622aec7091a05dbdcfd586bfa7740f369584bfc65"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip",
      verified: "github.com/jenskutilek/sudo-font/"
  name "Sudo"
  homepage "https://www.kutilek.de/sudo-font/"

  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
