cask "airtool" do
  version "1.9.2"
  sha256 "b70a3d4fa4f49ae9a87ad669b21963e825f9252e92d3d0bd5abc6a825b75f3de"

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
