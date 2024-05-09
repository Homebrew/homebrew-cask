cask "carbon-copy-cloner@5" do
  version "5.1.28.6213"
  sha256 "050ed65c493ff75bf415210de357ce552833c724e39c9d61043fd10151dd7a22"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner 5"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  deprecate! date: "2024-05-01", because: :discontinued

  auto_updates true
  conflicts_with cask: [
    "carbon-copy-cloner",
    "carbon-copy-cloner@6",
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
