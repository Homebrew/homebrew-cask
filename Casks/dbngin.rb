cask "dbngin" do
  version "5.2,54"
  sha256 "2f57263c290a552092b99175a58da96f9ffd630aadc5fc9400a4cbecd90b0861"

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
