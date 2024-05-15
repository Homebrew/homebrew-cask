cask "font-noto-serif-tc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftc/NotoSerifTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif TC"
  desc "Modulated (“serif”) design for languages in taiwan, hong kong and macau"
  homepage "https://fonts.google.com/specimen/Noto+Serif+TC"

  font "NotoSerifTC[wght].ttf"

  # No zap stanza required
end
