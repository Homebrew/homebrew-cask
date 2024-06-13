cask "font-waptia" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/waptia.zip"
  name "WAPTIA"
  homepage "https://moji-waku.com/waptia/index.html"

  font "waptia/Waptia-Light.otf"
  font "waptia/Waptia-Thin.otf"

  # No zap stanza required
end
