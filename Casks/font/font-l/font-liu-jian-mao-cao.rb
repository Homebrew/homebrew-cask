cask "font-liu-jian-mao-cao" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/liujianmaocao/LiuJianMaoCao-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Liu Jian Mao Cao"
  homepage "https://fonts.google.com/specimen/Liu+Jian+Mao+Cao"

  font "LiuJianMaoCao-Regular.ttf"

  # No zap stanza required
end
