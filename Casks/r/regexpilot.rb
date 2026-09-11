cask "regexpilot" do
  version "1.3"
  sha256 "0da4fc955b74aff16296e066661863a8ab9b5a95644208cfd1ffd38198c72f0f"

  url "https://pub-013d2816deaa41b0b7403efaa3d9a6e9.r2.dev/RegexPilot-#{version}-universal.dmg"
  name "RegexPilot"
  desc "Visual regex builder that runs patterns against 21 language engines"
  homepage "https://regexpilot.com/"

  livecheck do
    url "https://regexpilot.com/"
    regex(/v?(\d+(?:\.\d+)+)(?:<!--\s*-->)?\s*·\s*out now/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RegexPilot.app"

  uninstall quit: "com.regexpilot.app"

  zap trash: [
    "~/Library/Application Support/com.regexpilot.app",
    "~/Library/Caches/com.regexpilot.app",
    "~/Library/Preferences/com.regexpilot.app.plist",
    "~/Library/WebKit/com.regexpilot.app",
  ]
end
