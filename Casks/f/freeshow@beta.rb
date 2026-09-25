cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6-beta.3"
  sha256 arm:   "962c1e92cd6e3b7d9148ebd1df25cef3046ff4d92adaf60ce8c70013ea238def",
         intel: "c581f32a49a7de345cef9307f7f61966bae30bc829291e84270c8edc74de915e"

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
