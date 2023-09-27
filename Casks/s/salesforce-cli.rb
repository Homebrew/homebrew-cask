cask "salesforce-cli" do
  arch arm: "arm64", intel: "x64"

  version "5.428578"
  sha256 arm:   "e31290dd504c535a99469b8bc1650fdba74e5c6580b679b3f740bb3b1fb01d4f",
         intel: "d2a2a46c0771e6c3bbd0d111ecb22fb684a53a28835207d7fe1c4a40154bdec6"

  url "https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-#{arch}.pkg"
  name "Salesforce CLI"
  desc "Tools for SalesForce CLI"
  homepage "https://developer.salesforce.com/tools/salesforcecli"

  livecheck do
    url "https://github.com/forcedotcom/cli/blob/main/releasenotes/README.md"
    regex(/(\d+(?:\.\d+)+).*?[stable]\]/i)
    strategy :page_match
  end

  pkg "sf-#{arch}.pkg"

  uninstall pkgutil: [
              "com.salesforce.cli",
              "com.salesforce.developer.cli",
            ],
            delete:  "/usr/local/bin/sf"

  zap trash: [
    "~/.cache/sf",
    "~/.config/sf",
    "~/.local/share/sf",
    "~/.sf",
  ]
  end