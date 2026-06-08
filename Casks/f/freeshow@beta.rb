cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2-beta.1"
  sha256 arm:   "91d9ca41a873232946cea94745d912215ec25412736a67661050ae73c8d401f4",
         intel: "ddb3f28d227ecddf49b890d50ebb82a0aac145937f2e239da34821cd61dfdcf1"

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

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
