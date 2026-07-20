cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.4"
  sha256 arm:   "27ffec3b799395a252ad9125d55ecf7333e82e54840b0ebc80117b3a41e93cd5",
         intel: "328ed0bb105f7ea98c0a09c12c7ddc859bf7eca8ef46f17a90bd40d89e9a7aaf"

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
