cask "ltspice" do
  version "17.2.4"
  sha256 :no_check

  url "https://ltspice.analog.com/software/LTspice.pkg"
  name "LTspice"
  desc "SPICE simulation software, schematic capture and waveform viewer"
  homepage "https://www.analog.com/en/resources/design-tools-and-calculators/ltspice-simulator.html"

  livecheck do
    url :homepage
    regex(/for\s+MacOS.*?Version\s+v?(\d+(?:\.\d+)+)/im)
  end

  pkg "LTspice.pkg"

  uninstall pkgutil: [
    "com.analog.LTspice",
    "com.analog.LTspice.App",
  ]

  zap trash: [
        "~/Documents/LTspice/examples",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.analog.ltspice.app.sfl*",
        "~/Library/Application Support/LTspice",
        "~/Library/Preferences/com.analog.LTspice.App.plist",
        "~/Library/Saved Application State/com.analog.LTspice.App.savedState",
      ],
      rmdir: "~/Documents/LTspice"
end
