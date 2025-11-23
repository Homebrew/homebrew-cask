cask "font-satisfy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/satisfy/Satisfy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Satisfy"
  homepage "https://fonts.google.com/specimen/Satisfy"

  font "Satisfy-Regular.ttf"

  # No zap stanza required
end
