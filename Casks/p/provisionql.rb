cask "provisionql" do
  version "2.0.0"
  sha256 "949a7a69d2920c2f00a1246c65d0fd93b78ef8237a88af5ac4dd0f24245bd01a"

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.dmg"
  name "ProvisionQL"
  desc "Quick Look plugin for mobile apps and provisioning profiles"
  homepage "https://github.com/ealeksandrov/ProvisionQL"

  depends_on macos: :sequoia

  app "ProvisionQL.app"

  zap trash: [
    "~/Library/Application Scripts/com.ealeksandrov.ProvisionQL",
    "~/Library/Application Scripts/com.ealeksandrov.ProvisionQL.preview",
    "~/Library/Application Scripts/com.ealeksandrov.ProvisionQL.thumbnail",
    "~/Library/Containers/com.ealeksandrov.ProvisionQL",
    "~/Library/Containers/com.ealeksandrov.ProvisionQL.preview",
    "~/Library/Containers/com.ealeksandrov.ProvisionQL.thumbnail",
  ]
end
