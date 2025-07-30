cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8"
  sha256 arm:   "1ec77a74ef54e7470ebeb81b83a3a7c39259cfbc322c7075777602484af5db1d",
         intel: "b814cacb1d2b5f2bba308f17b3cb993cf3ea001a6767a421f16f0a5d77042f88"

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
