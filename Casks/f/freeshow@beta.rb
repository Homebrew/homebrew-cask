cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5-beta.4"
  sha256 arm:   "7e427d4d42f245b8d921533281622c321e5b394c4bc747d31eb7839d75d2116b",
         intel: "37f07c534845e0987925628fd24ac1281cfcdd5e7616cdc91d7f1d50d235d62f"

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

  uninstall quit: "app.freeshow"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
