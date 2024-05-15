cask "font-ronde" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/ronde_square.zip"
  name "Ronde"
  desc "Extended round font based on Kaiso"
  homepage "https://moji-waku.com/ronde/index.html"

  font "ronde_square/Ronde-B_square.otf"

  # No zap stanza required
end
