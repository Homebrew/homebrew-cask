cask "font-goblin-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/goblinone/GoblinOne.ttf",
      verified: "github.com/google/fonts/"
  name "Goblin One"
  homepage "https://fonts.google.com/specimen/Goblin+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Goblin One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GoblinOne.ttf"

  # No zap stanza required
end
