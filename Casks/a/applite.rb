cask "applite" do
  version "1.4.2"
  sha256 "94955981298a61ae2d3094c04e2089eefa70d2ceb0099ef2ce0c9ab0af4e6306"

  url "https://github.com/milanvarady/Applite/releases/download/v#{version}/Applite.dmg"
  name "Applite"
  desc "User-friendly GUI app for Homebrew"
  homepage "https://aerolite.dev/applite"

  livecheck do
    url "https://milanvarady.github.io/Applite/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
