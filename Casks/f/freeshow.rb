cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7"
  sha256 arm:   "eec7dfbc4379db8a94e2676cecfd7c9908645d90281f307f4eb595b0bdc03f27",
         intel: "21095047a44eb5e2f6abf6ed93bc93eed3c64702299ad0ba337b705965be8d59"

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
  depends_on macos: ">= :catalina"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
