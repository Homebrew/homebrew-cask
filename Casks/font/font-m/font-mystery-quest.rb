cask "font-mystery-quest" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mysteryquest/MysteryQuest-Regular.ttf"
  name "Mystery Quest"
  homepage "https://fonts.google.com/specimen/Mystery+Quest"

  font "MysteryQuest-Regular.ttf"

  zap :not_required
end
