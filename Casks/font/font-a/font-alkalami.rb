cask "font-alkalami" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alkalami/Alkalami-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alkalami"
  homepage "https://fonts.google.com/specimen/Alkalami"

  font "Alkalami-Regular.ttf"

  # No zap stanza required
end
