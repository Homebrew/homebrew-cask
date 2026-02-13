cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.8-beta.1"
  sha256 arm:   "3966b869f817a7219aa0def7e6d3a4e297c3d9146be512fa438e132e0586164e",
         intel: "dd862b12ddc1feced6d82be60a92b8bfaba87313ba1e3ba07e6b35e7e1dd477f"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
