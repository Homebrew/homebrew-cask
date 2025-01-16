cask "presonus-universal-control" do
  version "4.6.0.103899,10084"
  sha256 "91ba6cbc4356d49043d7df6221766ef4dfd1baf1e5593b9c3bcda9658138c8eb"

  url "https://www.fmicassets.com/Damroot/Original/#{version.csv.second}/PreSonus_Universal_Control_v#{version.csv.first.dots_to_underscores}.dmg",
      verified: "fmicassets.com/Damroot/Original/"
  name "Universal Control"
  desc "PreSonus software control interface"
  homepage "https://www.presonus.com/pages/universal-control"

  # There is no page available specifically for the software
  # so we return the downloads from one of the popular products
  livecheck do
    url "https://www.presonus.com/products/audiobox-usb-96-studio"
    regex(%r{href=.*?/(\d+)/PreSonus[._-]Universal[._-]Control[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1].tr("_", ".")},#{match[0]}" }
    end
  end

  depends_on macos: ">= :mojave"

  pkg "PreSonus Universal Control.pkg"

  uninstall launchctl: [
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
    "~/Library/Application Support/PreSonus/universalcontrol",
    "~/Library/Preferences/com.presonus.ucapp.plist",
  ]
end
