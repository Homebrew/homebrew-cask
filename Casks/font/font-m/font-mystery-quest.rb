cask "font-mystery-quest" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mysteryquest/MysteryQuest-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mystery Quest"
  homepage "https://fonts.google.com/specimen/Mystery+Quest"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mystery Quest",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MysteryQuest-Regular.ttf"

  # No zap stanza required
end
