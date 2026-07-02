cask "floorp" do
  version "12.15.3"
  sha256 "677706d66f978c17715e29090ad5b2d397dcffd1ee21139a13a9e982110e3a81"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
      verified: "github.com/Floorp-Projects/Floorp/"
  name "Floorp browser"
  desc "Privacy-focused Firefox-based browser"
  homepage "https://floorp.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Floorp.app"

  zap trash: [
        "~/Library/Application Support/Floorp",
        "~/Library/Caches/Floorp",
        "~/Library/Caches/Mozilla/updates/Applications/Floorp",
        "~/Library/Preferences/*.floorp.plist",
        "~/Library/Saved Application State/*.floorp.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
