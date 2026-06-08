cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "96bc36a0583eaa489bbca4987458eea98b13613e45e0a0592aec6bc5e21087ad",
         intel: "ae12dc1d32b25df85040c81fa772f9118a769e50a5f14a003c11980394b28051"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "freeshow@beta"
  depends_on macos: :big_sur

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
