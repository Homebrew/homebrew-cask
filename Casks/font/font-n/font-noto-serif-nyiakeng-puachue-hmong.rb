cask "font-noto-serif-nyiakeng-puachue-hmong" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifnyiakengpuachuehmong/NotoSerifNyiakengPuachueHmong%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Nyiakeng Puachue Hmong"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Nyiakeng+Puachue+Hmong"

  font "NotoSerifNyiakengPuachueHmong[wght].ttf"

  # No zap stanza required
end
