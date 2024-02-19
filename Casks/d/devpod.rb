cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "9319b8bd26f588a40e34bd08e02ef9223d0b297bbfc1898fdbaae0ee9e8eb83e",
         intel: "07f407ae3dc0f3ea6126175fcf3c62b67d2f5f06b0a9cbc5911082a39205a326"

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
