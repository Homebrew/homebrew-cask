cask "font-fzfangsong-z02" do
  version :latest
  sha256 :no_check

  url "https://cdn1.foundertype.com/Public/Uploads/ttf/FZFSK.TTF"
  name "Fangzheng Fangsong GBK"
  homepage "https://www.foundertype.com/index.php/FontInfo/index.html?id=128"

  disable! date: "2025-07-14", because: :no_longer_meets_criteria

  font "FZFSK.ttf"

  # No zap stanza required
end
