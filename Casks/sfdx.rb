cask "sfdx" do
  arch arm: "arm64", intel: "x64"

  version "7.197.8"
  sha256 arm:   "149d44c2b8063eaebc7e054f72384e7384d966978fb2dc09ddfdc6712eff4673",
         intel: "f0c4770b8b1763e9ed2bbed99a438a73f986e286c6fad81541c804b985e7ba3e"

  url "https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-#{arch}.pkg"
  name "Salesforce DX CLI"
  desc "SalesForce CLI tools"
  homepage "https://developer.salesforce.com/tools/sfdxcli"

  livecheck do
    url "https://github.com/forcedotcom/cli/blob/main/releasenotes/sfdx/README.md"
    regex(/(\d+(?:\.\d+)+).*?[stable]\]/i)
    strategy :page_match
  end

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
