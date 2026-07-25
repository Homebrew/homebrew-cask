cask "font-hundar" do
  version :latest
  sha256 :no_check

  url "https://raw.githubusercontent.com/The-EPL-Type-Foundry/Hundar/refs/heads/main/fonts/otf/Hundar.otf",
      verified: "raw.githubusercontent.com/The-EPL-Type-Foundry/Hundar/"
  name "Hundar"
  homepage "https://darwintypeface.com/"

  font "Hundar.otf"

  # No zap stanza required
end
