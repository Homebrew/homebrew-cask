cask "ltspice" do
  version "17.0.40"
  sha256 :no_check

  url "https://ltspice.analog.com/software/LTspice.pkg"
  name "LTspice"
  desc "SPICE simulation software, schematic capture and waveform viewer"
  homepage "https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "LTspice.pkg"

  uninstall pkgutil: "com.analog.LTspice.App"

  zap trash: [
    "~/Documents/LTspice/examples",
    "~/Library/Application Support/LTspice",
    "~/Library/Preferences/com.analog.LTspice.App.plist",
  ],
      rmdir: "~/Documents/LTspice"
end
