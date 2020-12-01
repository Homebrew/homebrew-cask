cask "abstract" do
  version "96.2.0"
  sha256 "9ae4360c6aef1463d5c7908298037b96cb12622b0ef6a7f776e7f02123a77937"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.goabstract.com/releases/latest/download"
  name "Abstract"
  desc "Collaborative design tool with support for Sketch files"
  homepage "https://www.goabstract.com/"

  auto_updates true

  app "Abstract.app"

  zap trash: [
    "~/Library/Application Support/Abstract",
    "~/Library/Caches/com.elasticprojects.abstract-desktop",
    "~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.plist",
    "~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState",
  ]
end
