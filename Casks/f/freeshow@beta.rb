cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1-beta.3"
  sha256 arm:   "00b39f243ecc1a1294313eb4ea9db279ff64e0643dbd932e021d831eecfd60a7",
         intel: "ef12fdeeeed5498d0913c23aeaee9897203ce4d6f27fc3908c5bf95ee0451370"

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
