cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.6"
  sha256 arm:   "6b1babcdcae1f86e5d8d114ace84d6a4b0a2aa5975b344c7dde42684a9f48332",
         intel: "a39b3b9674048732890ae6b67edbe82f1d48eb724876a14a3cd5c3e0ae5e9019"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
