cask "font-udev-gothic-nf" do
  version "2.2.0"
  sha256 "45faeef7b5d8bc591bcc5887a2ca0c5fb9028066f18a5a52cd6f10b7d655ba37"

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
