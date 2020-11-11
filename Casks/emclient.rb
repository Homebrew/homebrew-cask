cask "emclient" do
  version "8.0.3494"
  sha256 "ec85fdf7c1344fc92f9b04123cf27e466cdaf8297db32702903200b4152be21c"

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.emclient.com/dist/latest/setup.pkg"
  name "eM Client"
  desc "Email client"
  homepage "https://www.emclient.com/"

  auto_updates true

  pkg "setup.pkg"

  uninstall pkgutil: "com.emclient.mail.client.pkg"

  zap trash: [
    "~/Library/Caches/com.emclient.mail.client",
    "~/Library/Preferences/com.emclient.mail.client.plist",
    "~/Library/Preferences/com.emclient.mail.repair.plist",
    "~/Library/Preferences/com.emclient.mail.shared.plist",
    "~/Library/Saved Application State/com.emclient.mail.client.savedState",
  ]
end
