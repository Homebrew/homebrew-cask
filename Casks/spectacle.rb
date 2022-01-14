cask "spectacle" do
  version "1.2,672"
  sha256 "766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c"

  url "https://spectacle.s3.amazonaws.com/downloads/Spectacle+#{version.csv.first}.zip",
      verified: "spectacle.s3.amazonaws.com/"
  name "Spectacle"
  desc "Move and resize windows with ease"
  homepage "https://www.spectacleapp.com/"

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

  caveats do
    discontinued
  end
end
