cask "font-mystery-quest" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mysteryquest/MysteryQuest-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mystery Quest"
  homepage "https://fonts.google.com/specimen/Mystery+Quest"

  font "MysteryQuest-Regular.ttf"

  # No zap stanza required
end
