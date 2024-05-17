cask "applite" do
  version "1.2.5"
  sha256 "c03474eb4b839b860ab3e12d076d74a3b03f5946d1c9621384563cb04e9ce3f1"

  url "https://github.com/milanvarady/Applite/releases/download/v#{version}/Applite.dmg",
      verified: "github.com/milanvarady/Applite/"
  name "Applite"
  desc "User-friendly GUI app for Homebrew"
  homepage "https://aerolite.dev/applite"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on formula: "pinentry-mac"

  app "Applite.app"

  zap trash: [
    "~/Library/Application Support/Applite",
    "~/Library/Application Support/dev.aerolite.Applite",
    "~/Library/Caches/Applite",
    "~/Library/Caches/dev.aerolite.Applite",
    "~/Library/Containers/dev.aerolite.Applite",
    "~/Library/HTTPStorages/dev.aerolite.Applite",
    "~/Library/Preferences/dev.aerolite.Applite.plist",
    "~/Library/Saved Application State/dev.aerolite.Applite.savedState",
  ]
end
