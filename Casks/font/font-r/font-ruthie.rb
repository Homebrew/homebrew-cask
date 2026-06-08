cask "font-ruthie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruthie/Ruthie-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruthie"
  homepage "https://fonts.google.com/specimen/Ruthie"

  font "Ruthie-Regular.ttf"

  # No zap stanza required
end
