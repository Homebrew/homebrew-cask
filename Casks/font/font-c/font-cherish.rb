cask "font-cherish" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cherish/Cherish-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cherish"
  homepage "https://fonts.google.com/specimen/Cherish"

  font "Cherish-Regular.ttf"

  # No zap stanza required
end
