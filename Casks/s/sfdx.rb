cask "sfdx" do
  arch arm: "arm64", intel: "x64"

  version "7.209.6"
  sha256 :no_check

  url "https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-#{arch}.pkg"
  name "Salesforce DX CLI"
  desc "SalesForce CLI tools"
  homepage "https://developer.salesforce.com/tools/sfdxcli"

  disable! date: "2024-12-16", because: :discontinued, replacement: "sf"

  pkg "sfdx-#{arch}.pkg"

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
