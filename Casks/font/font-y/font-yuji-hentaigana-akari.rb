cask "font-yuji-hentaigana-akari" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujihentaiganaakari/YujiHentaiganaAkari-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Hentaigana Akari"
  homepage "https://fonts.google.com/specimen/Yuji+Hentaigana+Akari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yuji Hentaigana Akari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YujiHentaiganaAkari-Regular.ttf"

  # No zap stanza required
end
