cask "font-fzhei-b01" do
  version :latest
  sha256 :no_check

  url "https://cdn1.foundertype.com/Public/Uploads/ttf/FZHTK.TTF"
  name "Fangzheng Heiti GBK"
  homepage "https://www.foundertype.com/index.php/FontInfo/index/id/131"

  disable! date: "2025-07-14", because: :no_longer_meets_criteria

  font "FZHTK.ttf"

  # No zap stanza required
end
