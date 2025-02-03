cask "galaxybudsclient" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "6f6d9c0111f04e3602f4a6262f3ec2c7e03e162d653433d2d93e70379a6bf5dc",
         intel: "4779aa8c463dc4b4f717eae7552860f05a59dbb953de1b1582e40a67cc5780f2"

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
