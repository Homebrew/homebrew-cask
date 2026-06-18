cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "707848ffc9b833d0b099ba4b3d88622a6579251d5ea179599bc1a09af48eeefc",
         intel: "5e3ffca71a9988b6182801552a1a62ae775bb67d20ce611b2f4d4ef927f5f53b"

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
