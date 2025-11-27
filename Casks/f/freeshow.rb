cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.4"
  sha256 arm:   "3d26ee0784ac83c0644b20e81ad1678f69dcf5a36ab21c2185d34dad62623413",
         intel: "4fadbe128142c398e6ee25a5717b64eddedf060d50686db2338184e9eaceee31"

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
