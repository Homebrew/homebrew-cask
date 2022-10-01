cask "airtool" do
  version "2.4,16"
  sha256 "b04145743af00635e17c5159d84b0c2e388f0e75cfef6b271e3e5591b8ee1688"

  url "https://www.intuitibits.com/downloads/Airtool_#{version.csv.first}.pkg"
  name "Airtool"
  desc "Capture Wi-Fi packets"
  homepage "https://www.intuitibits.com/products/airtool/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.airtool#{version.major}cast.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "Airtool_#{version.csv.first}.pkg"

  uninstall_preflight do
    set_ownership "/Library/Application Support/Airtool #{version.major}"
  end

  uninstall pkgutil:    [
              "com.intuitibits.airtool-helper.pkg",
              "com.intuitibits.airtool#{version.major}.pkg",
            ],
            launchctl:  "com.intuitibits.airtool#{version.major}.airtool-bpf",
            login_item: "Airtool",
            delete:     "/Library/Application Support/Airtool #{version.major}"

  zap trash: [
    "~/Library/Application Support/Airtool #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.airtool#{version.major}.help*",
    "~/Library/Caches/com.intuitibits.airtool#{version.major}",
    "~/Library/HTTPStorages/com.intuitibits.airtool#{version.major}.binarycookies",
    "~/Library/Preferences/com.intuitibits.airtool#{version.major}.plist",
  ]
end
