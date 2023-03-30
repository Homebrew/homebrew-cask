cask "sfdx" do
  version "7.193.2"
  sha256 :no_check

  url "https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx.pkg"
  name "Salesforce DX CLI"
  desc "SalesForce CLI tools"
  homepage "https://developer.salesforce.com/tools/sfdxcli"

  livecheck do
    url "https://github.com/forcedotcom/cli/blob/main/releasenotes/sfdx/README.md"
    regex(/(\d+(?:\.\d+)+).*?[stable]\]/i)
    strategy :page_match
  end

  pkg "sfdx.pkg"

  uninstall pkgutil: [
              "com.salesforce.cli",
              "com.salesforce.developer.cli",
            ],
            delete:  "/usr/local/bin/sfdx"

  zap trash: [
    "~/.cache/sfdx",
    "~/.config/sfdx",
    "~/.local/share/sfdx",
  ]
end
