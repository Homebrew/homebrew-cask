cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.9"
  sha256 arm:   "4a3316ee0b9fa9ff1b452c54eed215729666a298d723636b133bac91a01a933a",
         intel: "23d4f035b6892f5c29b3dc99445930209cda9cdd77d1a3d0bddc5e60a6f7676d"

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
