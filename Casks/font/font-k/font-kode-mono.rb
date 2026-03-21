cask "font-kode-mono" do
  version "1.206"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kodemono/KodeMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kode Mono"
  homepage "https://fonts.google.com/specimen/Kode+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kode Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KodeMono[wght].ttf"

  # No zap stanza required
end
