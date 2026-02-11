cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "48cf3d41c58c92f2602e17ac52b9aa053dd1b3d461846d5063bd13682098cd46",
         intel: "2f1fefdd247cb695fd8af4ac5d2a22bf04ce160830782ec3366b763720096817"

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
