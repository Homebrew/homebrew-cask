cask "ltspice" do
  version "17.0.22.0"
  sha256 :no_check

  url "https://ltspice.analog.com/software/LTspice.dmg"
  name "LTspice"
  desc "SPICE simulation software, schematic capture and waveform viewer"
  homepage "https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html"

  livecheck do
    skip "No version information available"
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
