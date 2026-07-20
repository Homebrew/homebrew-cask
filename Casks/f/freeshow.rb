cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3"
  sha256 arm:   "ed9ac4ec2bf09ce5bf3bab76a42a562604328ef825b031efe72189b9f99fd615",
         intel: "08d47e54f69f9ca59022abe55e90a0a0c1291a4209927f15fe5e67a16f3dc5d2"

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
