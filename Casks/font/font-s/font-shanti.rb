cask "font-shanti" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shanti/Shanti-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shanti"
  homepage "https://fonts.google.com/specimen/Shanti"

  font "Shanti-Regular.ttf"

  # No zap stanza required
end
