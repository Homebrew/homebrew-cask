cask "font-slackey" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/slackey/Slackey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slackey"
  homepage "https://fonts.google.com/specimen/Slackey"

  font "Slackey-Regular.ttf"

  # No zap stanza required
end
