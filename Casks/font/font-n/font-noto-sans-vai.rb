cask "font-noto-sans-vai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansvai/NotoSansVai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Vai"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Vai"

  font "NotoSansVai-Regular.ttf"

  # No zap stanza required
end
