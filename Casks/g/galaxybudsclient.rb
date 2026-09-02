cask "galaxybudsclient" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "1380b1bbcb42ad6c3a0120a8500b56000c14f2f55954aee94f55bb0573c3d7d6",
         intel: "d030c4fcb3a5216df9e0d06ee477205cc01f955e425425b8909cbd7a4bda2e36"

  url "https://github.com/ThePBone/GalaxyBudsClient/releases/download/#{version}/GalaxyBudsClient_macOS_#{arch}.pkg"
  name "GalaxyBudsClient"
  desc "Unofficial manager for the Buds, Buds+, Buds Live and Buds Pro"
  homepage "https://github.com/ThePBone/GalaxyBudsClient"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  pkg "GalaxyBudsClient_macOS_#{arch}.pkg"

  uninstall pkgutil: "me.timschneeberger.galaxybudsclient"

  zap trash: [
    "~/Library/Application Support/GalaxyBudsClient",
    "~/Library/Preferences/me.timschneeberger.galaxybudsclient.plist",
    "~/Library/Saved Application State/me.timschneeberger.galaxybudsclient.savedState",
  ]
end
