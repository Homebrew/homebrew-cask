cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.4-beta.2"
  sha256 arm:   "5287a97507d2041ccab2e2a965f2534615c1da967f0ea4c015445d9ac92b2fd0",
         intel: "9165126bd2b2039c088deb96a43c7cc34443a350f477e67424b173d56a0e1c26"

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
