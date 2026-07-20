cask "font-moo-lah-lah" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moolahlah/MooLahLah-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moo Lah Lah"
  homepage "https://fonts.google.com/specimen/Moo+Lah+Lah"

  font "MooLahLah-Regular.ttf"

  # No zap stanza required
end
