cask "font-allkin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allkin/Allkin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allkin"
  homepage "https://fonts.google.com/specimen/Allkin"

  font "Allkin-Regular.ttf"

  # No zap stanza required
end
