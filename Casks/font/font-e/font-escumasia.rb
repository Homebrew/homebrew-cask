cask "font-escumasia" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/escumasia.zip"
  name "Escumasia"
  homepage "https://moji-waku.com/escumasia/index.html"

  font "escumasia/Escumasia-Regular.otf"

  zap :not_required
end
