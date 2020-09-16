cask "airtool" do
  version "1.9.1"
  sha256 "85a469adad7be1a53a2c2e0a99edf97da8109de4a057e30431cebb0f7f1f9430"

  url "https://www.intuitibits.com/downloads/Airtool_#{version}.pkg"
  appcast "https://www.intuitibits.com/appcasts/airtoolcast.xml"
  name "Airtool"
  homepage "https://www.intuitibits.com/products/airtool/"

  pkg "Airtool_#{version}.pkg"

  uninstall_preflight do
    set_ownership "/Library/Application Support/Airtool"
  end

  uninstall pkgutil:    [
    "com.intuitibits.airtool-helper.pkg",
    "com.intuitibits.airtool.pkg",
  ],
            launchctl:  "com.intuitibits.airtool.airtool-bpf",
            login_item: "Airtool",
            delete:     "/Library/Application Support/Airtool"
end
