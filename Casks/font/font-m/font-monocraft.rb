cask "font-monocraft" do
  version "4.2.1"
  sha256 "0ea1aea12f03d552a469fc017f19ea927b53bf9d21e60a41c5c476c3faf3c7f9"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft.ttc"
  name "Monocraft"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft.ttc"

  # No zap stanza required
end
