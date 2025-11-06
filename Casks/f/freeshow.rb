cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256 arm:   "04f7d6b6e303ac474b2bf93f133002ce227f1e2bcab8ac14fe7733a5c18e0fb4",
         intel: "41008d516f4c63dee9804cbf6f75d1a2f2c7706f5bae431ff17844173c61d33c"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
