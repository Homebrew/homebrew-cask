cask "font-kranky" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kranky/Kranky-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kranky"
  homepage "https://fonts.google.com/specimen/Kranky"

  font "Kranky-Regular.ttf"

  # No zap stanza required
end
