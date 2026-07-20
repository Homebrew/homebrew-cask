cask "font-hanalei-fill" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hanaleifill/HanaleiFill-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hanalei Fill"
  homepage "https://fonts.google.com/specimen/Hanalei+Fill"

  font "HanaleiFill-Regular.ttf"

  # No zap stanza required
end
