cask "ltspice" do
  version "26.0.2"
  sha256 :no_check

  url "https://ltspice.analog.com/software/LTspice_26.pkg"
  name "LTspice"
  desc "SPICE simulation software, schematic capture and waveform viewer"
  homepage "https://www.analog.com/en/resources/design-tools-and-calculators/ltspice-simulator.html"

  livecheck do
    skip "Blocked by upstream bot protection"
  end

  depends_on macos: :sonoma

  pkg "LTspice_26.pkg"

  uninstall pkgutil: "com.analog.ltspice"

  zap trash: [
        "~/Documents/LTspice/examples",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.analog.ltspice.app.sfl*",
        "~/Library/Application Support/LTspice",
        "~/Library/Preferences/com.analog.ltspice.plist",
        "~/Library/Saved Application State/com.analog.LTspice.App.savedState",
      ],
      rmdir: "~/Documents/LTspice"
end
