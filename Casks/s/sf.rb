cask "sf" do
  arch arm: "arm64", intel: "x64"

  version "2.9.8"
  sha256 :no_check

  url "https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-#{arch}.pkg"
  name "Salesforce CLI"
  desc "Salesforce CLI tools"
  homepage "https://developer.salesforce.com/tools/salesforcecli"

  livecheck do
    url "https://raw.githubusercontent.com/forcedotcom/cli/main/releasenotes/README.md"
    regex(/(\d+(?:\.\d+)+)\s+\(.*?\)\s+\[stable\]/i)
  end

  pkg "sf-#{arch}.pkg"

  uninstall pkgutil: "com.salesforce.cli",
            delete:  [
              "/usr/local/bin/sf",
              "/usr/local/bin/sfdx",
            ]

  zap trash: [
    "~/.cache/sf",
    "~/.config/sf",
    "~/.local/share/sf",
    "~/.sf",
  ]
end
