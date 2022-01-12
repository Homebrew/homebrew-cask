cask "airtool" do
  version "2.3.2,10"
  sha256 "0cb877f0ec485ee100db44ce155cc1c39d242a37db60e6951fa8b9f0e2e669e3"

  url "https://www.intuitibits.com/downloads/Airtool_#{version.csv.first}.pkg"
  name "Airtool"
  desc "Capture Wi-Fi packets"
  homepage "https://www.intuitibits.com/products/airtool/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.airtool#{version.major}cast.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "Airtool_#{version.before_comma}.pkg"

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
end
