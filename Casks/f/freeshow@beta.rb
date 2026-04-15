cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0-beta.4"
  sha256 arm:   "bc2f1bae247ac97c4ca5429acb86ab106db2f704a148e009589a2b394f33f813",
         intel: "908b9d44e54fc60e70f7557b5bba8a989d9701b12408168975e36552a2a74c9b"

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
