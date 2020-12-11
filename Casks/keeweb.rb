cask "keeweb" do
  version "1.16.3"
  sha256 "91204ca969f3047d41e632c3a5efb0526aec460f7281747693f8bc9fc6b28281"

  # github.com/keeweb/keeweb/ was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg"
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
