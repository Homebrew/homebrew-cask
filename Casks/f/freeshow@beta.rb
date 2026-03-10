cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0-beta.1"
  sha256 arm:   "9896adcb697141a1c9f8a98866a70059e39c04f60ec50dbfc20ab73e7507e2c9",
         intel: "ff927c74974f847306c9cc51b7e9ea03f99931f4d16e50788e691f09b455c75c"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
