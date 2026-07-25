cask "font-ephesis" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ephesis/Ephesis-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ephesis"
  homepage "https://fonts.google.com/specimen/Ephesis"

  font "Ephesis-Regular.ttf"

  # No zap stanza required
end
