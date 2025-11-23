cask "font-fzkai-z03" do
  version :latest
  sha256 :no_check

  url "https://cdn1.foundertype.com/Public/Uploads/ttf/FZKTK.TTF"
  name "Fangzheng Kaiti GBK"
  homepage "https://www.foundertype.com/index.php/FontInfo/index.html?id=137"

  disable! date: "2025-07-14", because: :no_longer_meets_criteria

  font "FZKTK.ttf"

  # No zap stanza required
end
