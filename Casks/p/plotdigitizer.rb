cask "plotdigitizer" do
  version "2.6.11"
  sha256 "527f4eaf178b358e0d4de8f99782412665cc15601ff673d6a58a490787288925"

  url "https://downloads.sourceforge.net/plotdigitizer/#{version}/PlotDigitizer_MacOS.dmg"
  name "Plot Digitizer"
  desc "Digitize scanned plots of functional data"
  homepage "https://plotdigitizer.sourceforge.net/"

  app "Plot Digitizer.app"

  # No zap stanza required
end
