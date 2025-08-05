cask "plotdigitizer" do
  version "2.6.12"
  sha256 "46542758d70e80e194bf1ae7d1da31415bf91635f13782bc460d10af9568b987"

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
