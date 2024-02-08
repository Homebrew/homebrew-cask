cask "applite" do
  version "1.2.2"
  sha256 "4ea45aae9b188ca54b4b7771da3507c1f57f37e135e66e8f28f23819f3467e8c"

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
