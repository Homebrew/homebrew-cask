cask "cadran" do
  version "2.0.1"
  sha256 "68dfd8360148248780f89c829e5d57f39ef6b1a6cca2e93f8b51e992d7959c1a"

  url "https://github.com/Ilyomix/Cadran-releases/releases/download/v#{version}/Cadran-#{version}.dmg"
  name "Cadran"
  desc "Desktop clock rendered behind your icons"
  homepage "https://cadranapp.com/"

  livecheck do
    url "https://github.com/Ilyomix/Cadran-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cadran.app"

  zap trash: [
    "~/Library/Application Support/Cadran",
    "~/Library/Caches/com.cadran.wallpaper-contrast",
    "~/Library/Caches/ilyomix.Cadran",
    "~/Library/HTTPStorages/ilyomix.Cadran*",
    "~/Library/Preferences/ilyomix.Cadran.plist",
  ]
end
