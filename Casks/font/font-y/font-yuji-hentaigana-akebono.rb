cask "font-yuji-hentaigana-akebono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujihentaiganaakebono/YujiHentaiganaAkebono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Hentaigana Akebono"
  homepage "https://fonts.google.com/specimen/Yuji+Hentaigana+Akebono"

  font "YujiHentaiganaAkebono-Regular.ttf"

  # No zap stanza required
end
