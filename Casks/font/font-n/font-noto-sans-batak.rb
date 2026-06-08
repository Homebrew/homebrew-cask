cask "font-noto-sans-batak" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbatak/NotoSansBatak-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Batak"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Batak"

  font "NotoSansBatak-Regular.ttf"

  # No zap stanza required
end
