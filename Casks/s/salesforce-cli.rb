cask "salesforce-cli" do
  arch arm: "arm64", intel: "x64"

  version "2.104.6,03675e8"
  sha256 arm:   "7a5c002c68636e86a1b2d2d28761c62f358ffe668d2beac02f1a147a93f2d993",
         intel: "24211a6307f0ab5da6921149eeec330a1bc66f146463a42834385fe477ea8ac2"

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
