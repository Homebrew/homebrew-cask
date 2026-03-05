cask "galaxybudsclient" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "c1ae5a659f908808600d6f538b802d4808bbad2bf880fb11ebdc9efff6c18457",
         intel: "d5cc2929c512b46db148360e23af62fd68da02dd5d6512ce010f285e6b778e24"

  url "https://github.com/ThePBone/GalaxyBudsClient/releases/download/#{version}/GalaxyBudsClient_macOS_#{arch}.pkg"
  name "GalaxyBudsClient"
  desc "Unofficial manager for the Buds, Buds+, Buds Live and Buds Pro"
  homepage "https://github.com/ThePBone/GalaxyBudsClient"

  depends_on macos: ">= :monterey"

  pkg "GalaxyBudsClient_macOS_#{arch}.pkg"

  uninstall pkgutil: "me.timschneeberger.galaxybudsclient"

  zap trash: [
    "~/Library/Application Support/GalaxyBudsClient",
    "~/Library/Preferences/me.timschneeberger.galaxybudsclient.plist",
    "~/Library/Saved Application State/me.timschneeberger.galaxybudsclient.savedState",
  ]
end
