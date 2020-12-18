cask "keeweb" do
  version "1.16.4"
  sha256 "9ce1b721e745566f5235e3ebbe746cf54648b33f91202a6c18fd7819382fd744"

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
