cask "abstract" do
  version "96.0.0"
  sha256 "cc3e901200f153f07ae0ea4ddeb0f8e1ec573837b2dac2cd76871c28f37a7224"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.goabstract.com/releases/latest/download"
  name "Abstract"
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
