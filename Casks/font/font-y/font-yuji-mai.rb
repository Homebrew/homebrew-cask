cask "font-yuji-mai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujimai/YujiMai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Mai"
  homepage "https://fonts.google.com/specimen/Yuji+Mai"

  font "YujiMai-Regular.ttf"

  # No zap stanza required
end
