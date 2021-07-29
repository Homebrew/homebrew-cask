cask "airtool" do
  version "2.3,8"
  sha256 "b054bb33a4c476ef8f90e9c6273c0816d1de9b709f194a25b0250330908ebeeb"

  url "https://www.intuitibits.com/downloads/Airtool_#{version.before_comma}.pkg"
  name "Airtool"
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
