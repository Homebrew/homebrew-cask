cask "dbngin" do
  version "5.6,56"
  sha256 "d46d300a2e582d50543af30442e37c9de0aa83bee8cedbf0d4e8711ba9e3edfb"

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
