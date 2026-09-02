cask "applite" do
  version "1.4.0"
  sha256 "5344b3c868a80eb9b4ce6734f35c18e13b1c4ed1559038ddec8e271257abdeab"

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
