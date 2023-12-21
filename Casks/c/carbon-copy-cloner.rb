cask "carbon-copy-cloner" do
  version "6.1.8.7612"
  sha256 "7f59870e3a890088e2906653ab3d332abb8b8292a1f91cd7ec1c94356df9e535"

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
  depends_on macos: ">= :catalina"

  app "Carbon Copy Cloner.app"

  uninstall quit:       [
              "com.bombich.ccc",
              "com.bombich.cccuseragent",
            ],
            login_item: "CCC User Agent"

  zap trash: [
    "~/Library/Application Support/com.bombich.ccc",
    "~/Library/Caches/com.bombich.ccc",
    "~/Library/Preferences/com.bombich.ccc.plist",
    "~/Library/Preferences/com.bombich.cccuseragent.plist",
    "~/Library/Saved Application State/com.bombich.ccc.savedState",
    "/Library/LaunchDaemons/com.bombich.ccchelper.plist",
  ]
end
