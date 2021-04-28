cask "carbon-copy-cloner" do
  version "5.1.26.6180"
  sha256 "4cc505232be165e44af1e83cabdcf8b23449078f668b0ec6d988898e6dbbfe42"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  livecheck do
    url "https://bombich.com/software/download_ccc.php?v=latest"
    strategy :header_match
  end

  auto_updates true

  app "Carbon Copy Cloner.app"

  uninstall login_item: "CCC User Agent",
            quit:       [
              "com.bombich.ccc",
              "com.bombich.cccuseragent",
            ]

  zap trash: [
    "~/Library/Application Support/com.bombich.ccc",
    "~/Library/Caches/com.bombich.ccc",
    "~/Library/Preferences/com.bombich.ccc.plist",
    "~/Library/Preferences/com.bombich.cccuseragent.plist",
    "~/Library/Saved Application State/com.bombich.ccc.savedState",
    "/Library/LaunchDaemons/com.bombich.ccchelper.plist",
  ]
end
