cask "font-yuji-hentaigana-akari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujihentaiganaakari/YujiHentaiganaAkari-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Hentaigana Akari"
  homepage "https://fonts.google.com/specimen/Yuji+Hentaigana+Akari"

  font "YujiHentaiganaAkari-Regular.ttf"

  # No zap stanza required
end
