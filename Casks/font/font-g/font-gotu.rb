cask "font-gotu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gotu/Gotu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gotu"
  homepage "https://fonts.google.com/specimen/Gotu"

  font "Gotu-Regular.ttf"

  # No zap stanza required
end
