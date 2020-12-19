cask "keeweb" do
  version "1.16.5"
  sha256 "d36cbc329f41c8e4192ff5297fd0f2fece04e5b5a22f12102bf8e887d9943733"

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
