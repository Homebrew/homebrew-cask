cask "reveal" do
  version "56"
  sha256 "bd473e597d1871c112ba75933fda7946d619d304998c8b8b307a9c9a34a80b8d"

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  name "Reveal"
  desc "Powerful runtime view debugging for iOS developers"
  homepage "https://revealapp.com/"

  livecheck do
    url "https://revealapp.com/updates/index.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

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
