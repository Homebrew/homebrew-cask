cask "font-noto-sans-multani" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmultani/NotoSansMultani-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Multani"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Multani"

  font "NotoSansMultani-Regular.ttf"

  # No zap stanza required
end
