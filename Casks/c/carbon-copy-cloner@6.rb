cask "carbon-copy-cloner@6" do
  version "6.1.13.7698"
  sha256 "9a808f582e73e0612534bf1e6fcec04f71c707be1b61e36bd0fc94d6c8fd6ab0"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner 6"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  livecheck do
    url "https://api.bombich.com/download/ccc?v=ccc6&l=alternate"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "carbon-copy-cloner",
    "carbon-copy-cloner@5",
  ]

  app "Carbon Copy Cloner.app"

  uninstall quit:       [
              "com.bombich.ccc",
              "com.bombich.cccuseragent",
            ],
            login_item: "CCC User Agent"

  zap trash: [
    "/Library/LaunchDaemons/com.bombich.ccchelper.plist",
    "~/Library/Application Support/com.bombich.ccc",
    "~/Library/Caches/com.bombich.ccc",
    "~/Library/Preferences/com.bombich.ccc.plist",
    "~/Library/Preferences/com.bombich.cccuseragent.plist",
    "~/Library/Saved Application State/com.bombich.ccc.savedState",
  ]
end
