cask "airtool" do
  version "2.6"
  sha256 "af24e20018d460181e6b52b3e42e649b8edd426b3538378dfbe1c4b9d13a27c5"

  url "https://www.intuitibits.com/downloads/Airtool_#{version}.pkg"
  name "Airtool"
  desc "Capture Wi-Fi packets"
  homepage "https://www.intuitibits.com/products/airtool/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.airtool#{version.major}cast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "Airtool_#{version}.pkg"

  uninstall_preflight do
    set_ownership "/Library/Application Support/Airtool #{version.major}"
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
