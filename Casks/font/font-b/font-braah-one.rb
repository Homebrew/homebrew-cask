cask "font-braah-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/braahone/BraahOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Braah One"
  homepage "https://fonts.google.com/specimen/Braah+One"

  font "BraahOne-Regular.ttf"

  # No zap stanza required
end
