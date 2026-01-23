cask "font-noto-sans-n-ko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnko_todelist/NotoSansNKo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans N Ko"
  homepage ""

  font "NotoSansNKo-Regular.ttf"

  # No zap stanza required
end
