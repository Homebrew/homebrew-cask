cask "salesforce-cli" do
  arch arm: "arm64", intel: "x64"

  version "2.122.6,e047207"
  sha256 arm:   "177ebc2ce2616db556aece1d8d562b1dda44aca8e7d8bccdb3bb62a2dba6df63",
         intel: "8859c627442c3885f5deb01fe806abe74016336cdc2a5aa0908a3bf6c3b2afc9"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
