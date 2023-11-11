cask "sf" do
  arch arm: "arm64", intel: "x64"

  version "2.16.10,38f3e4f"
  sha256 arm:   "68fa823b7bbd834da3556bf658d0ffd6f37af700faccbf1b005eadf2337d5775",
         intel: "2fa5fc2af2cd2b525fb0822fbf870b2f8e038717d0d4bae54486a947d27524f8"

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
