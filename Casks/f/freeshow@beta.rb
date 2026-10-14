cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7-beta.1"
  sha256 arm:   "9d40a334e8a5314b331e7318e434216cf60a506729fba5122ade86c580fb0601",
         intel: "79bff343c508d5cb8951e6a969d3d23cfd22c42f5063a027a6df8a421f659079"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on :macos

  app "FreeShow.app"

  uninstall quit: "app.freeshow"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
