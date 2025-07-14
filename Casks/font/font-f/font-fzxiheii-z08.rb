cask "font-fzxiheii-z08" do
  version :latest
  sha256 :no_check

  url "https://cdn1.foundertype.com/Public/Uploads/ttf/FZXH1K.TTF"
  name "Fangzheng XiheiI GBK"
  homepage "https://www.foundertype.com/index.php/FontInfo/index/id/161"

  disable! date: "2025-07-14", because: :no_longer_meets_criteria

  font "FZXH1K.ttf"

  # No zap stanza required
end
