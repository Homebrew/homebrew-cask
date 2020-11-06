cask "sfdx" do
  version "7.71.0-4193fb4acc"
  sha256 "140913c08c0522e6a2cc29bcfae63e65c587684c3c81f5b20d1716c8353bce39"

  url "https://developer.salesforce.com/media/salesforce-cli/sfdx-cli/channels/stable/sfdx-cli-v#{version}.pkg"
  appcast "https://developer.salesforce.com/media/salesforce-cli/manifest.json"
  name "Salesforce DX CLI"
  homepage "https://developer.salesforce.com/tools/sfdxcli"

  pkg "sfdx-cli-v#{version}.pkg"

  uninstall pkgutil: "com.salesforce.developer.cli",
            delete:  "/usr/local/bin/sfdx"

  zap trash: [
    "~/.cache/sfdx",
    "~/.config/sfdx",
    "~/.local/share/sfdx",
  ]
end
