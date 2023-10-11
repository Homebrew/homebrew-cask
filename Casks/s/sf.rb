cask "sf" do
  arch arm: "arm64", intel: "x64"

  version "2.12.9,007e29c"
  sha256 arm:   "10180033f6d656d1713785fa88ea6c9e37879d6d0093fdb7736afa485e18831a",
         intel: "d5b4a7aabee7dd14195d1e9efb8f8310605ce84ad236033117dd98a6a667366b"

  url "https://developer.salesforce.com/media/salesforce-cli/sf/versions/#{version.csv.first}/#{version.csv.second}/sf-v#{version.csv.first}-#{version.csv.second}-#{arch}.pkg"
  name "Salesforce CLI"
  desc "Salesforce CLI tools"
  homepage "https://developer.salesforce.com/tools/salesforcecli"

  livecheck do
    url "https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-darwin-#{arch}-buildmanifest"
    strategy :json do |json|
      "#{json["version"]},#{json["sha"]}"
    end
  end

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
