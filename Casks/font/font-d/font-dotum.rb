cask "font-dotum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dotum/Dotum-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dotum"
  homepage "https://fonts.google.com/specimen/Dotum"

  font "Dotum-Regular.ttf"

  # No zap stanza required
end
