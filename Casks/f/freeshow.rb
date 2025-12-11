cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.5"
  sha256 arm:   "562bdae08d4b7151538af1b183f5c627eccda3d82ce372badba03ec92bede532",
         intel: "d9c8ef26887a18b0d244d1b37b632300a83ca557a3caea6fd6dec925b5dbeb4a"

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
