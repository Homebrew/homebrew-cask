cask "font-monocraft-nerd-font" do
  version "4.0"
  sha256 "95801bf21826bf8572af3787af82e77ee48df4bfb87e90c4317fcffbe7eaf037"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft-nerd-fonts-patched.ttc"
  name "Monocraft with Nerd glyphs"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft-nerd-fonts-patched.ttc"

  # No zap stanza required
end
