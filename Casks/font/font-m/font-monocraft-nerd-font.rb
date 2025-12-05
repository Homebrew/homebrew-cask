cask "font-monocraft-nerd-font" do
  version "4.2"
  sha256 "1208252be677af800142ad553512cd8081c8245b11f89476519109ebb503c69e"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft-nerd-fonts-patched.ttc"
  name "Monocraft with Nerd glyphs"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft-nerd-fonts-patched.ttc"

  # No zap stanza required
end
