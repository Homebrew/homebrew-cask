cask "airtool" do
  version "2.7.7"
  sha256 "bbd854a59cea0adc6e8dbe954c9591662f47742a4feaf424a2b70ecc6c1f9d37"

  url "https://www.intuitibits.com/downloads/Airtool_#{version}.pkg"
  name "Airtool"
  desc "Capture Wi-Fi packets"
  homepage "https://www.intuitibits.com/products/airtool/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.airtool#{version.major}cast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "Airtool_#{version}.pkg"

  uninstall_preflight_steps do
    set_ownership "/Library/Application Support/Airtool {{version.major}}"
  end

  uninstall launchctl:  "com.intuitibits.airtool#{version.major}.airtool-bpf",
            login_item: "Airtool",
            pkgutil:    [
              "com.intuitibits.airtool#{version.major}.pkg",
              "com.intuitibits.airtool-helper.pkg",
            ],
            delete:     "/Library/Application Support/Airtool #{version.major}"

  zap trash: [
    "~/Library/Application Support/Airtool #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.airtool#{version.major}.help*",
    "~/Library/Caches/com.intuitibits.airtool#{version.major}",
    "~/Library/HTTPStorages/com.intuitibits.airtool#{version.major}.binarycookies",
    "~/Library/Preferences/com.intuitibits.airtool#{version.major}.plist",
  ]
end
