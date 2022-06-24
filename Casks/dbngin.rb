cask "dbngin" do
  version "5.1,52"
  sha256 "a7c4b55b1138cb4934e34c1f29604670a66fd2ce815a3df8380b0159157ad8f7"

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
