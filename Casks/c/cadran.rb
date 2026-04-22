cask "cadran" do
  version "1.3.2"
  sha256 "2f74db318fa77b98324dd3c7b40b5a4a901fb0655bdd0d98cccf0200cfeb292e"

  url "https://github.com/Ilyomix/Cadran-releases/releases/download/v#{version}/Cadran-#{version}.dmg",
      verified: "github.com/Ilyomix/Cadran-releases/"
  name "Cadran"
  desc "Desktop clock rendered behind your icons"
  homepage "https://cadranapp.com/"

  livecheck do
    url "https://github.com/Ilyomix/Cadran-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Cadran.app"

  zap trash: [
    "~/Library/Application Support/Cadran",
    "~/Library/Preferences/ilyomix.Cadran.plist",
  ]
end
