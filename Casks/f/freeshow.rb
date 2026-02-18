cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.8"
  sha256 arm:   "86d46a73e4a8a454f3c337d6beff65fe9e4122ccf5651484e6c36cae48fbca1c",
         intel: "231ac98f88236e1f9640917f3397520c57a6a96f9213ddc0975eeedc20b1ae53"

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
