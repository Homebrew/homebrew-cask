cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "0cb2bb44e011a0edc7f4f5041598ac3a78366efcea1877fed957c4309a244e2f",
         intel: "3a7aae0cce8412d2611457012ebfc4cd35208b789cbb14402f6fa17a494b6d2c"

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
