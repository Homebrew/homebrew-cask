cask "font-fzshusong-z01" do
  version :latest
  sha256 :no_check

  url "https://cdn1.foundertype.com/Public/Uploads/ttf/FZSSK.TTF"
  name "Fangzheng Shusong GBK"
  homepage "https://www.foundertype.com/index.php/FontInfo/index.html?id=151"

  disable! date: "2025-07-14", because: :no_longer_meets_criteria

  font "FZSSK.ttf"

  # No zap stanza required
end
