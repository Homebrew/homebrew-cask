cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5-beta.2"
  sha256 arm:   "3c90386bdd22d374b5e814e7a726ed4af63473a083ce629d3c5f5312467a644f",
         intel: "d3eea23e39b290ba6a84c0347ff2cda6dfcf6949e45e7b5653d82094c3baa93c"

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
