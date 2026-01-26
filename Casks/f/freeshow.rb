cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.6"
  sha256 arm:   "49609cb6fdcf0d1a4898d7337823fb126cf144e247ad864883290d5d1c1e7c15",
         intel: "6e79255394f7898131266ff1fc4f7e34331d047f7aab8cbadaa574083cbdf34d"

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
  conflicts_with cask: "freeshow@beta"
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
