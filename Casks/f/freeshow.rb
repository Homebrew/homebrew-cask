cask "freeshow" do
  arch arm: "-arm64"

  version "1.1.7"
  sha256 arm:   "1cabc51d4e92d52694cdead214adc0b2013bd418f3f431c57c193498fa7c49e3",
         intel: "57b0c882b438dd04f3a542b67a39fdea96c4bff728a0ae2b46e70c38d20a02e4"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}#{arch}-mac.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
