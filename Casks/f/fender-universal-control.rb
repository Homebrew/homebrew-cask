cask "fender-universal-control" do
  version "5.1.1.113315,10153"
  sha256 "37734bd937d40ed5a4e19b9c3d916202641e144da812b3b629cadd9026e1fbf8"

  url "https://www.fmicassets.com/Damroot/Original/#{version.csv.second}/Fender_Universal_Control_v#{version.csv.first.dots_to_underscores}.dmg"
  name "Universal Control"
  desc "Fender software control interface"
  homepage "https://www.presonus.com/pages/universal-control"

  # There is no page available specifically for the software
  # so we return the downloads from one of the popular products
  livecheck do
    url "https://www.presonus.com/products/audiobox-usb-96-studio"
    regex(%r{href=.*?/(\d+)/Fender[._-]Universal[._-]Control[._-]v?(\d+(?:[._-]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1].tr("_", ".")},#{match[0]}" }
    end
  end

  depends_on :macos

  pkg "Fender Universal Control.pkg"

  uninstall launchctl: [
              "asp.com.fender.pae-quantum-audio-plug-in",
              "asp.com.presonus.pae-quantum-audio-plug-in",
              "com.presonus.ucdaemon",
            ],
            pkgutil:   [
              "presonus.pkg.Universal.Control.controlpanel",
              "presonus.pkg.Universal.Control.daemon",
              "presonus.pkg.Universal.Control.presets",
              "presonus.pkg.Universal.Control.tb_driver",
            ]

  zap trash: [
    "/Library/Application Support/PreSonus/universalcontrol",
    "/Library/LaunchDaemons/com.presonus.ucdaemon.plist",
    "~/Library/Application Support/Fender/Universal Control",
    "~/Library/Application Support/PreSonus/universalcontrol",
    "~/Library/Caches/Juce/Universal Control",
    "~/Library/Preferences/com.fender.ucapp.plist",
    "~/Library/Preferences/com.presonus.ucapp.plist",
    "~/Library/Preferences/Fender/Universal Control",
  ]
end
