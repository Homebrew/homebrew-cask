cask "plotdigitizer" do
  version "2.6.9"
  sha256 "2f7656ad6957ff00defdce5dddfdaf501ac90b80b2ef515201376a12efe0a004"

  url "https://downloads.sourceforge.net/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg",
      verified: "downloads.sourceforge.net/plotdigitizer/"
  name "Plot Digitizer"
  desc "Digitize scanned plots of functional data"
  homepage "https://plotdigitizer.sourceforge.io/"

  app "PlotDigitizer.app"
end
