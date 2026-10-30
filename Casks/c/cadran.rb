cask "cadran" do
  version "2.0"
  sha256 "63282885bfbdca15c613ec45ffa430fe22a9ff473a10f6b86bc217211386fd6f"

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
    "~/Library/Preferences/ilyomix.Cadran.plist",
  ]
end
