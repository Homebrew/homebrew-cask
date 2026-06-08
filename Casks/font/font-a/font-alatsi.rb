cask "font-alatsi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alatsi/Alatsi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alatsi"
  homepage "https://fonts.google.com/specimen/Alatsi"

  font "Alatsi-Regular.ttf"

  # No zap stanza required
end
