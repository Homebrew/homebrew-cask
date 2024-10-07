cask "colemak-dhk" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/ColemakMods/mod-dh/archive/refs/heads/master.tar.gz",
      verified: "github.com/ColemakMods/mod-dh/"
  name "Colemak-DHk Keyboard Layout"
  desc "Colemak mod for more comfortable typing (DHk variant)"
  homepage "https://colemakmods.github.io/mod-dh/"

  keyboard_layout "mod-dh-master/macOS/Colemak DHk.bundle"

  # No zap stanza required

  caveats do
    logout
  end
end
