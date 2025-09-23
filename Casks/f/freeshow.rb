cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "08df1cccae7dd775860a1d2eb4b5c201831e6d75ed21065822b66480a9e3a858",
         intel: "9332e7a82c0945f58c649e40268550d0d21a6312ed97929520aa5d1e0ac4a309"

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
