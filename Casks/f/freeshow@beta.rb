cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0-beta.2"
  sha256 arm:   "cc78de8242dcc8365b1346338f51735e974e31c1e67b72f1e449762b8987e108",
         intel: "264a6e3666461b6bda5ac293a66263af739f2e7a33788ac7592596f2b1545b37"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
