cask "keeweb" do
  version "1.16.6"
  sha256 "24b0854faa7feb8677f39545b2e96e7498082c04e8d458912708c1afed29146f"

  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
      verified: "github.com/keeweb/keeweb/"
  appcast "https://github.com/keeweb/keeweb/releases.atom"
  name "KeeWeb"
  desc "Free cross-platform password manager compatible with KeePass"
  homepage "https://keeweb.info/"

  auto_updates true

  app "KeeWeb.app"

  uninstall_preflight do
    set_ownership "#{appdir}/KeeWeb.app"
  end
end
