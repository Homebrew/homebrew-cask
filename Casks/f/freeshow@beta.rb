cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2-beta.2"
  sha256 arm:   "755f6296204d014c03b03dcc5525498b3cb7679fc34bbda6b6dfe36b0bf2f289",
         intel: "be1684a5f526294564891372fa183a1fbe00869ceb48db72397bad62b047e623"

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
