cask "font-yuji-hentaigana-akebono" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujihentaiganaakebono/YujiHentaiganaAkebono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Hentaigana Akebono"
  homepage "https://fonts.google.com/specimen/Yuji+Hentaigana+Akebono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yuji Hentaigana Akebono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YujiHentaiganaAkebono-Regular.ttf"

  # No zap stanza required
end
