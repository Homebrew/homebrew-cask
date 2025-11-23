cask "font-monocraft-nerd-font" do
  version "4.1"
  sha256 "114879c755a8fed955e658868998371cabbb531b0ba7b994d5478c63d29b22d8"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft-nerd-fonts-patched.ttc"
  name "Monocraft with Nerd glyphs"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft-nerd-fonts-patched.ttc"

  # No zap stanza required
end
