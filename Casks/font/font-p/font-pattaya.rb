cask "font-pattaya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pattaya/Pattaya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pattaya"
  homepage "https://fonts.google.com/specimen/Pattaya"

  font "Pattaya-Regular.ttf"

  # No zap stanza required
end
