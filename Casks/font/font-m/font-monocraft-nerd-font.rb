cask "font-monocraft-nerd-font" do
  version "4.2.1"
  sha256 "67f88ff9e7c6560f6cf60fb062fd353a72f62dc2654462950c65b63ed53d9754"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft-nerd-fonts-patched.ttc"
  name "Monocraft with Nerd glyphs"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft-nerd-fonts-patched.ttc"

  # No zap stanza required
end
