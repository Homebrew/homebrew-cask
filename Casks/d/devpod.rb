cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.21"
  sha256 arm:   "6ad83b765d783ed4b3b39cbe1dd3baa9908a615003120684ef830ce002a87535",
         intel: "6e214607944371b970b4882767e12dae228d75683a2b76bc755e02ab008f60f6"

  url "https://github.com/loft-sh/devpod/releases/download/v#{version}/DevPod_#{version}_#{arch}.dmg",
      verified: "github.com/loft-sh/devpod/"
  name "DevPod"
  desc "UI to create reproducible developer environments based on a devcontainer.json"
  homepage "https://devpod.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DevPod.app"
  binary "#{appdir}/DevPod.app/Contents/MacOS/devpod-cli", target: "devpod"

  zap trash: [
    "~/.devpod",
    "~/Library/Application Support/sh.loft.devpod",
    "~/Library/Caches/sh.loft.devpod",
    "~/Library/Logs/sh.loft.devpod",
    "~/Library/Preferences/sh.loft.devpod.plist",
    "~/Library/Saved Application State/sh.loft.devpod.savedState",
    "~/Library/WebKit/sh.loft.devpod",
  ]
end
