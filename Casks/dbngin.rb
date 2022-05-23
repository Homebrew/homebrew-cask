cask "dbngin" do
  version "5.0,50"
  sha256 "36538bdd086ad4b911c3064aa90673e3622ca638fcd866edec0aea6c835551bf"

  url "https://dbngin-osx-builds.s3.amazonaws.com/#{version.csv.second}/DBngin.dmg",
      verified: "dbngin-osx-builds.s3.amazonaws.com/"
  name "DBngin"
  desc "Database version management tool"
  homepage "https://dbngin.com/"

  livecheck do
    url "https://dbngin.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
  ]
end
