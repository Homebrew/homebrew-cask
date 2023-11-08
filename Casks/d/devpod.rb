cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "8f5941f81f761baa7c7aa78499d70b7d13ebb37bdf978d22716699817ca23dd2",
         intel: "60617ef878469e9709d73f397b44b3873e9d8054ece99fdea091a59619bd3b73"

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
