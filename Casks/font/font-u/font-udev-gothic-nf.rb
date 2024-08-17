cask "font-udev-gothic-nf" do
  version "2.0.0"
  sha256 "551f1e89861f71cdf0c714cea42e503dbec5a6064f07af1711f1731003433039"

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
