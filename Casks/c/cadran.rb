cask "cadran" do
  version "2.0.3"
  sha256 "0ad635f195c0cbefd277bb66472a83591b4e80f5000cf3386291faa9d1295257"

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
