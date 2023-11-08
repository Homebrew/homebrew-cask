cask "sf" do
  arch arm: "arm64", intel: "x64"

  version "2.16.7,ee67deb"
  sha256 arm:   "6cbd506670b23040cb7b4f3125c7075bb8f9f2f8c561dd41ed68d04bc95bcf67",
         intel: "73788038c0c4f5e769164c1b48e0cb74aee11f73621e19be32c8177624c8abe4"

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
