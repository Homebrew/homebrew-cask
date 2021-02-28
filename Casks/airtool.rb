cask "airtool" do
  version "2.1,5"
  sha256 "f42c2ac515a15c8892e66ff7d5467e3e8616dfe5d873d075cc024ccf623b5866"

  url "https://www.intuitibits.com/downloads/Airtool_#{version.before_comma}.pkg"
  name "Airtool"
  homepage "https://www.intuitibits.com/products/airtool/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/airtoolcast.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "Airtool_#{version.before_comma}.pkg"

  uninstall_preflight do
    set_ownership "/Library/Application Support/Airtool 2"
  end

  uninstall pkgutil:    [
    "com.intuitibits.airtool-helper.pkg",
    "com.intuitibits.airtool.pkg",
  ],
            launchctl:  "com.intuitibits.airtool2.airtool-bpf",
            login_item: "Airtool",
            delete:     "/Library/Application Support/Airtool 2"
end
