cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6-beta.2"
  sha256 arm:   "1b0409cc6f9cbab38dc06c9e01a855c6364b67369c973daa92f831272267c881",
         intel: "e642d9123fdeaecca9e37a3b2ac9c285cf0d6b277d589e3c3d52e9d138b75a4f"

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
