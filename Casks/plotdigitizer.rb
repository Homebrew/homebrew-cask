cask "plotdigitizer" do
  version "2.6.9"
  sha256 "2f7656ad6957ff00defdce5dddfdaf501ac90b80b2ef515201376a12efe0a004"

  # downloads.sourceforge.net/plotdigitizer/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg"
  appcast "https://sourceforge.net/projects/plotdigitizer/rss"
  name "Plot Digitizer"
  homepage "https://plotdigitizer.sourceforge.io/"

  app "PlotDigitizer.app"
end
