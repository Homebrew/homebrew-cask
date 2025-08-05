cask "font-dejavu" do
  version "2.37"
  sha256 "7576310b219e04159d35ff61dd4a4ec4cdba4f35c00e002a136f00e96a908b0a"

  url "https://downloads.sourceforge.net/dejavu/dejavu-fonts-ttf-#{version}.zip"
  name "DejaVu"
  homepage "https://sourceforge.net/projects/dejavu/"

  livecheck do
    url "https://sourceforge.net/projects/dejavu/rss?path=/dejavu"
  end

  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuMathTeXGyre.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSans-Bold.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSans-BoldOblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSans-ExtraLight.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSans-Oblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSans.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansCondensed-Bold.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansCondensed-BoldOblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansCondensed-Oblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansCondensed.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansMono-Bold.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansMono-BoldOblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansMono-Oblique.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSansMono.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerif-Bold.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerif-BoldItalic.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerif-Italic.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerif.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerifCondensed-Bold.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerifCondensed-BoldItalic.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerifCondensed-Italic.ttf"
  font "dejavu-fonts-ttf-#{version}/ttf/DejaVuSerifCondensed.ttf"

  # No zap stanza required
end
