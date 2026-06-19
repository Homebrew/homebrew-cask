cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3-beta.1"
  sha256 arm:   "9a63b978c549c519a033852631543086021b282c1757aca67e36f940837c5093",
         intel: "3ec40b794404af7b9a1e58b061c27ad0101d57ae0cb973bf1af7d0347d40c860"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: :big_sur

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
