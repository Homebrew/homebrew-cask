cask "floorp" do
  version "11.3.2"
  sha256 "ceb10603888b93672cc1ac18e2a1b98625f56ec9bb2f2d82f94e34f2a7f512b1"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
      verified: "github.com/Floorp-Projects/"
  name "Floorp browser"
  desc "Privacy-focused Firefox-based browser"
  homepage "https://floorp.app/"

  auto_updates true

  app "Floorp.app"

  zap rmdir: "~/Library/Caches/Mozilla",
      trash: [
        "~/Library/Application Support/Floorp",
        "~/Library/Caches/Floorp",
        "~/Library/Caches/Mozilla/updates/Applications/Floorp",
        "~/Library/Preferences/*.floorp.plist",
        "~/Library/Saved Application State/*.floorp.savedState",
      ]
end
