cask "floorp" do
  version "11.25.0"
  sha256 "76225e9b2e13e72f7ad82b420eb6a7d0e0553b2341d32a68c89e4fadf7f273ab"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
      verified: "github.com/Floorp-Projects/Floorp/"
  name "Floorp browser"
  desc "Privacy-focused Firefox-based browser"
  homepage "https://floorp.app/"

  livecheck do
    url "https://floorp.app/en/download"
    regex(%r{/v?(\d+(?:\.\d+)+)/floorp[._-]macOS[._-]universal\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
