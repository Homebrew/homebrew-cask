cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7-beta.2"
  sha256 arm:   "e148937e5ab0ebb9a8dfd402d144b6a41a96a93f4f930e5fc092653e8bf15ff8",
         intel: "2e12067200bf1b181cb6b93d56144c9a58fcf8c6144b3173c199a0af6d4b1821"

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
