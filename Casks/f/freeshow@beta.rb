cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.6-beta.3"
  sha256 arm:   "68ccf522394396a562c34070076a87681a6045f37de3a45e4b91c66c3b747d52",
         intel: "e32555cccff9b8d9edb5690e78004369b7a0315d8b8985bc2025958cf78f591c"

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
