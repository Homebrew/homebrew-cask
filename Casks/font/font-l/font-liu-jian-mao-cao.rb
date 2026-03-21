cask "font-liu-jian-mao-cao" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/liujianmaocao/LiuJianMaoCao-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Liu Jian Mao Cao"
  homepage "https://fonts.google.com/specimen/Liu+Jian+Mao+Cao"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Liu Jian Mao Cao",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LiuJianMaoCao-Regular.ttf"

  # No zap stanza required
end
