cask "airtool" do
  version "2.3.5,13"
  sha256 "f65e6d33b1984f65d5fa76853b8ff65d9ac2c154aaa4a803552dd15e81e3a8b8"

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
    "/Library/Application Support/Airtool 2",
    "/Library/LaunchDaemons/com.intuitibits.airtool2.airtool-bpf.plist",
    "~/Library/Application Support/Airtool 2",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.airtool2.help*2.3.5",
    "~/Library/Caches/com.intuitibits.airtool2",
    "~/Library/HTTPStorages/com.intuitibits.airtool2.binarycookies",
    "~/Library/Preferences/com.intuitibits.airtool2.plist",
  ]
end
