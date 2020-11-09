cask "ltspice" do
  version :latest
  sha256 :no_check

  url "https://ltspice.analog.com/software/LTspice.dmg"
  name "LTspice"
  desc "SPICE simulation software, schematic capture and waveform viewer"
  homepage "https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html"

  app "LTspice.app"

  zap trash: [
    "~/Documents/LTspice/examples",
    "~/Library/Application Support/LTspice",
  ],
      rmdir: "~/Documents/LTspice"
end
