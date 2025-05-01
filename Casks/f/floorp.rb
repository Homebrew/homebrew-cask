cask "floorp" do
  version "11.26.0"
  sha256 "b2a9de1277e24bd71c41fba7f86cfbe3876ab7675edc697f1639d99d310cd161"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
      verified: "github.com/Floorp-Projects/Floorp/"
  name "Floorp browser"
  desc "Privacy-focused Firefox-based browser"
  homepage "https://floorp.app/"

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
