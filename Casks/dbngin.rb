cask "dbngin" do
  version "32"
  sha256 "11f06e7fc877392f70860cbbf86191271233d74de325ff5d3916bcb77bff7c14"

  # dbngin-osx-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://dbngin-osx-builds.s3.amazonaws.com/#{version}/DBngin.dmg"
  appcast "https://dbngin.com/osx/version.xml"
  name "DBngin"
  homepage "https://dbngin.com/"

  auto_updates true

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
  ]
end
