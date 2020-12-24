cask "dbngin" do
  version "3.1,32"
  sha256 "11f06e7fc877392f70860cbbf86191271233d74de325ff5d3916bcb77bff7c14"

  url "https://dbngin-osx-builds.s3.amazonaws.com/#{version.after_comma}/DBngin.dmg",
      verified: "dbngin-osx-builds.s3.amazonaws.com/"
  name "DBngin"
  homepage "https://dbngin.com/"

  livecheck do
    url "https://dbngin.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
  ]
end
