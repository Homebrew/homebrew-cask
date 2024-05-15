cask "font-crushed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/crushed/Crushed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Crushed"
  desc "Unicase design, tossing aside the traditional lowercase for one that matches the cap height"
  homepage "https://fonts.google.com/specimen/Crushed"

  font "Crushed-Regular.ttf"

  # No zap stanza required
end
