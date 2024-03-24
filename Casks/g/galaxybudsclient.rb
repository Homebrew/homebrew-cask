cask "galaxybudsclient" do
  arch arm: "arm64", intel: "x64"

  version "4.6.0"
  sha256 arm:   "be1d12605ae486fe1713fd8afcb977a2e0b13ae836aeb60bd19cfe8c4c49faec",
         intel: "780f14421ab6986cf88394151cd1d20f491613b7c23721d7803856b5aa53c8eb"

  url "https://github.com/ThePBone/GalaxyBudsClient/releases/download/#{version}/GalaxyBudsClient_macOS-#{arch}.pkg"
  name "GalaxyBudsClient"
  desc "Unofficial manager for the Buds, Buds+, Buds Live and Buds Pro"
  homepage "https://github.com/ThePBone/GalaxyBudsClient"

  depends_on macos: ">= :sonoma"

  pkg "GalaxyBudsClient_macOS-#{arch}.pkg"

  uninstall pkgutil: "me.timschneeberger.galaxybudsclient"

  zap trash: [
    "~/Library/Application Support/GalaxyBudsClient",
    "~/Library/Preferences/me.timschneeberger.galaxybudsclient.plist",
    "~/Library/Saved Application State/me.timschneeberger.galaxybudsclient.savedState",
  ]
end
