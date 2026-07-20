cask "font-noto-sans-limbu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslimbu/NotoSansLimbu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Limbu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Limbu"

  font "NotoSansLimbu-Regular.ttf"

  # No zap stanza required
end
