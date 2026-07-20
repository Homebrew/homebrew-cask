cask "font-xiaolai-mono" do
  version "3.126"
  sha256 "802b658db492e02ae5b659f5b56d7d4ef8f77609515bdcc82f462ae912888c33"

  url "https://github.com/lxgw/kose-font/releases/download/v#{version}/XiaolaiMono-Regular.ttf"
  name "Xiaolai Font Mono"
  name "小赖字体等宽"
  name "小瀨字體等寬"
  name "Kose Font Mono"
  homepage "https://github.com/lxgw/kose-font"

  font "XiaolaiMono-Regular.ttf"

  # No zap stanza required
end
