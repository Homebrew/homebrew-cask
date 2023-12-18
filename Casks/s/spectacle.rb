cask "spectacle" do
  version "1.2,672"
  sha256 "766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c"

  url "https://github.com/eczarny/spectacle/releases/download/#{version.csv.first}/Spectacle+#{version.csv.first}.zip",
      verified: "github.com/eczarny/spectacle/"
  name "Spectacle"
  desc "Move and resize windows with ease"
  homepage "https://www.spectacleapp.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Spectacle.app"

  uninstall quit: "com.divisiblebyzero.Spectacle"

  zap trash: [
    "~/Library/Application Support/Spectacle",
    "~/Library/Caches/com.divisiblebyzero.Spectacle",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle",
    "~/Library/Cookies/com.divisiblebyzero.Spectacle.binarycookies",
    "~/Library/Preferences/com.divisiblebyzero.Spectacle.plist",
  ]
end
