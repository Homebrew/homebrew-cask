cask "font-monocraft" do
  version "4.0"
  sha256 "95801bf21826bf8572af3787af82e77ee48df4bfb87e90c4317fcffbe7eaf037"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft.ttc"
  name "Monocraft"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft.ttc"

  # No zap stanza required
end
