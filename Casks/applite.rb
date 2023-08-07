cask "applite" do
  version "1.0"
  sha256 "b717e6f4ae55005490478e78dbd541f6c426aac0d9c8db3baa74afda99c9d789"

  url "https://github.com/milanvarady/Applite/releases/download/v#{version}/Applite.dmg",
      verified: "github.com/milanvarady/Applite/"
  name "applite"
  desc "User-friendly GUI app for Homebrew"
  homepage "https://aerolite.dev/applite"

  livecheck do
    url "https://milanvarady.github.io/Applite/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Applite.app"

  zap trash: [
    "~/Library/Application Support/Applite",
    "~/Library/Application Support/dev.aerolite.Applite",
    "~/Library/Containers/dev.aerolite.Applite",
    "~/Library/Caches/Applite",
    "~/Library/Caches/dev.aerolite.Applite",
    "~/Library/Saved Application State/dev.aerolite.Applite.savedState",
  ]
end
