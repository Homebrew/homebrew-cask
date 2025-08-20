cask "salesforce-cli" do
  arch arm: "arm64", intel: "x64"

  version "2.102.6,8c0d3cb"
  sha256 arm:   "fdd87e3e35d47c762333e1e69062fe4bf7b769152622608d7aa52bcb430e4210",
         intel: "fc80dbca82a19b3a77ac2d1c2f6b2b4c8365caf4873814c9381241d7e0c99353"

  url "https://github.com/salesforcecli/cli/releases/download/#{version.csv.first}/sf-v#{version.csv.first}-#{version.csv.second}-#{arch}.pkg",
      verified: "github.com/salesforcecli/cli/"
  name "Salesforce CLI"
  desc "CLI tools for Salesforce"
  homepage "https://developer.salesforce.com/tools/salesforcecli"

  livecheck do
    url "https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-darwin-#{arch}-buildmanifest"
    strategy :json do |json|
      next if json["version"].blank? || json["sha"].blank?

      "#{json["version"]},#{json["sha"]}"
    end
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :el_capitan"

  pkg "sf-v#{version.csv.first}-#{version.csv.second}-#{arch}.pkg"

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
