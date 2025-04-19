cask "plotdigitizer" do
  version "2.6.11b"
  sha256 "55bd67c08b169ad9122a1f0e55d80d4e5e8da3a7787e1e0595a0bd27f9dadaad"

  url "https://downloads.sourceforge.net/plotdigitizer/plotdigitizer/#{version}/PlotDigitizer_MacOS.dmg"
  name "Plot Digitizer"
  desc "Digitize scanned plots of functional data"
  homepage "https://plotdigitizer.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/plotdigitizer/rss?path=/plotdigitizer"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+[a-z]?)/PlotDigitizer(?:[._-]v?\d+(?:\.\d+)+)?[._-]MacOSX?\.dmg}i)
  end

  app "Plot Digitizer.app"

  # No zap stanza required
end
