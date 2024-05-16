cask "font-zcool-kuaile" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zcoolkuaile/ZCOOLKuaiLe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ZCOOL KuaiLe"
  homepage "https://fonts.google.com/specimen/ZCOOL+KuaiLe"

  font "ZCOOLKuaiLe-Regular.ttf"

  # No zap stanza required
end
