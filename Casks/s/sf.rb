cask "sf" do
  arch arm: "arm64", intel: "x64"

  version "2.16.10,38f3e4f"
  sha256 arm:   "f6845bb2d329bdae9ed835f53390b8ad60e335f0cc15cd368cef63803e09b93a",
         intel: "18d09197e7cd31519589d7f8117a369b1b0ffb26cc921ce53a9e17ac1165b454"

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
