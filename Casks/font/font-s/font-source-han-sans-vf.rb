cask "font-source-han-sans-vf" do
  version "2.005R"
  sha256 "ad5be44dcfb9728bf99ce6813f6f137d0695b28523eba5322ea16d5eb459819c"

  url "https://github.com/adobe-fonts/source-han-sans/raw/refs/tags/#{version}/Variable/OTC/SourceHanSans-VF.otf.ttc"
  name "Source Han Sans VF"
  homepage "https://github.com/adobe-fonts/source-han-sans"

  font "SourceHanSans-VF.otf.ttc"

  # No zap stanza required
end
