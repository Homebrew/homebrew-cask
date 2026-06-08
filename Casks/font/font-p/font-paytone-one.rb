cask "font-paytone-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/paytoneone/PaytoneOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Paytone One"
  homepage "https://fonts.google.com/specimen/Paytone+One"

  font "PaytoneOne-Regular.ttf"

  # No zap stanza required
end
