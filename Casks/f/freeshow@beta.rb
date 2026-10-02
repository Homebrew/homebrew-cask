cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6-beta.4"
  sha256 arm:   "a56b9f29389e86bbfd4b4b80a6062ceebb1997285d2806928b153d1c09afe531",
         intel: "bcc312b3190188c10d7b83e78ad0926548d9460ea851eae3a0337c04f8d98d6b"

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
