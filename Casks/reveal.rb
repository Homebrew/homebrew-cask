cask "reveal" do
  version "41"
  sha256 "2b02b3ae2ee286c624a5da7ff80e4cc6b6e99401fe1412b180ebfbbea9d68d56"

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  name "Reveal"
  desc "Powerful runtime view debugging for iOS developers"
  homepage "https://revealapp.com/"

  livecheck do
    url "https://revealapp.com/updates/index.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Reveal.app"

  zap trash: [
    "/Users/Shared/Reveal",
    "~/Library/Application Support/Reveal",
    "~/Library/Caches/com.ittybittyapps.Reveal2",
    "~/Library/Logs/com.ittybittyapps.Reveal2",
    "~/Library/Preferences/com.ittybittyapps.Reveal2.plist",
    "~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState",
  ]
end
