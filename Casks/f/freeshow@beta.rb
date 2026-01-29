cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7-beta.1"
  sha256 arm:   "e2c3438143b4e142481f80375f355eae118a6a393f660532a4425acb0c2f6e8c",
         intel: "54be4158c8e1547f81cf7c868593bb23a7d8888c0c6747d0e4726bc3bda930e1"

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
