cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "b9121a80b746f28f3c1bec724b06ab02ffbb77a9953928299bc412d34dfe140b",
         intel: "64ac45b95378dfd94e56ee61e39fb8a94f2b2cd44ae76d9f5ce5f8871c5d2596"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
