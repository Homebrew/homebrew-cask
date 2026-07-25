cask "font-rock-salt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rocksalt/RockSalt-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rock Salt"
  homepage "https://fonts.google.com/specimen/Rock+Salt"

  font "RockSalt-Regular.ttf"

  # No zap stanza required
end
