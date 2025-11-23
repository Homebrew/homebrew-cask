cask "font-udev-gothic-nf" do
  version "2.1.0"
  sha256 "2d3ea89a7dfbf5ad07893fa1a39894f5860a146fd2633311176c61dcca6120e7"

  url "https://github.com/yuru7/udev-gothic/releases/download/v#{version}/UDEVGothic_NF_v#{version}.zip"
  name "UDEV Gothic NF"
  homepage "https://github.com/yuru7/udev-gothic"

  font "UDEVGothic_NF_v#{version}/UDEVGothic35NF-Bold.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NF-BoldItalic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NF-Italic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NF-Regular.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NFLG-Bold.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NFLG-BoldItalic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NFLG-Italic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothic35NFLG-Regular.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNF-Bold.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNF-BoldItalic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNF-Italic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNF-Regular.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNFLG-Bold.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNFLG-BoldItalic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNFLG-Italic.ttf"
  font "UDEVGothic_NF_v#{version}/UDEVGothicNFLG-Regular.ttf"

  # No zap stanza required
end
