cask "font-noto-sans-pau-cin-hau" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspaucinhau/NotoSansPauCinHau-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Pau Cin Hau"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Pau+Cin+Hau"

  font "NotoSansPauCinHau-Regular.ttf"

  # No zap stanza required
end
