cask "font-zcool-kuaile" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolkuaile/ZCOOLKuaiLe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL KuaiLe"
  homepage "https://fonts.google.com/specimen/ZCOOL+KuaiLe"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "ZCOOL KuaiLe",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZCOOLKuaiLe-Regular.ttf"

  # No zap stanza required
end
