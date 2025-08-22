cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9"
  sha256 arm:   "330636fe07197224526933becd3f94619856c89943bd4804c195cbdb23988fc5",
         intel: "25e1eee1c76233bab4f7dcf761baa062b4d8ebd2240fa3e68c8d1376439edc34"

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
