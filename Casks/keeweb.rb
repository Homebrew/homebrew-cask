cask "keeweb" do
  version "1.16.7"
  sha256 "793aae610275f762e7d96822f88f908ef290403fa4d3c26f30e56fdcda55a147"

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
