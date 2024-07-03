cask "qwerty-fr" do
  version "0.7.3"
  sha256 "7c8213994ae08323ab95837c586bb0863f77a334ec744ce8762332e7af345b70"

  url "https://github.com/qwerty-fr/qwerty-fr/releases/download/v#{version}/qwerty-fr_#{version}_mac.zip",
      verified: "github.com/qwerty-fr/qwerty-fr/"
  name "qwerty-fr keyboard layout"
  desc "QWERTY-based layout. Type EU languages, greek, math, currencies, & more!"
  homepage "https://qwerty-fr.org/"

  depends_on macos: ">= :sierra"

  keyboard_layout "qwerty-fr.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
