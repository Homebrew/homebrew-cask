cask "font-langar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/langar/Langar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Langar"
  homepage "https://fonts.google.com/specimen/Langar"

  font "Langar-Regular.ttf"

  # No zap stanza required
end
