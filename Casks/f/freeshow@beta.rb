cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6-beta.1"
  sha256 arm:   "2d1b8bcad47c22c38f0e13b63a1cde6f8b646fd8baa7720f27d669ff1453a08d",
         intel: "b5dd311710d851a2427788e888735f370ce6c8e56500dcb9917da8b90a16b45c"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on :macos

  app "FreeShow.app"

  uninstall quit: "app.freeshow"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
