cask "airtool" do
  version "2.3.4,12"
  sha256 "4b4dff3d7dfbb8513da361ffc2ab78efeca90aa3d092ebbe6501ab21df40fd0c"

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
end
