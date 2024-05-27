cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.11"
  sha256 arm:   "8ed977dd12279ea3e7b16a4d8aa41c092f7a5dc04d8582c84f882ef8620dd410",
         intel: "e945a13c1341408836daf89b628a4a548b5a89a8f6d6b19e066c8ff9a1554e5b"

  url "https://github.com/loft-sh/devpod/releases/download/v#{version}/DevPod_macos_#{arch}.dmg",
      verified: "github.com/loft-sh/devpod/"
  name "DevPod"
  desc "UI to create reproducible developer environments based on a devcontainer.json"
  homepage "https://devpod.sh/"

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
