cask "salesforce-cli" do
  arch arm: "arm64", intel: "x64"

  version "5.134736"
  sha256 :no_check

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