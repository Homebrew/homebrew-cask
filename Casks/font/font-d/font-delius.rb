cask "font-delius" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delius/Delius-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Delius"
  homepage "https://fonts.google.com/specimen/Delius"

  font "Delius-Regular.ttf"

  # No zap stanza required
end
