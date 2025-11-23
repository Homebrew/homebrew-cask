cask "reveal" do
  version "57"
  sha256 "f2072fa721b067b0644117c2cd0e27c8718336216591a702624b002a8d93f2c2"

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
