cask "airtool" do
  version "2.4.1,17"
  sha256 "49f118fad997cd4f14da7cf3a8867094fd6ce5894f49c81a7257205393acfa15"

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
