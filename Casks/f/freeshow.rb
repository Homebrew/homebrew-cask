cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "83e195328c22157b1f58a8c0506fc19270230f9577b46f6387ca01b17f0a0eb2",
         intel: "f0029d8d52711bc0c150612f370138b84a470b66bd8cba2de780c55db2c38eed"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
