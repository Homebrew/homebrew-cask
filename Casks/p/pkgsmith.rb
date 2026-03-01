cask "pkgsmith" do
  version "1.0.0"
  sha256 "b6879d30121f348c22cf39ce425eaff0a1fed3270f8f348006046f6c744c259a"

  url "https://github.com/Fogh/pkg-updates/releases/download/#{version}/PKGSmith-#{version}-macos.zip"
  name "PKGSmith"
  desc "Create signed PKG and DMG installers from reusable project definitions"
  homepage "https://pkgsmith.app/"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "PKGSmith.app"
  binary "PKGSmith.app/Contents/MacOS/PKGSmith", target: "pkgsmith"

  zap trash: [
    "~/Library/Application Support/PKGSmith",
    "~/Library/Caches/dk.foghdev.PKGSmith",
    "~/Library/Preferences/dk.foghdev.PKGSmith.plist",
    "~/Library/Saved Application State/dk.foghdev.PKGSmith.savedState",
  ]
end
