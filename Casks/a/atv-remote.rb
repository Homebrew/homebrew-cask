cask "atv-remote" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "346c95cdae25f78d4d75d9e1fafc60a6d37e05258dfadfd2a40b010231b1b39f",
         intel: "80c7b55da85799f23e4e36ede23990a9d9ee22c90d9c23bd5fcd8c55125b48e5"

  url "https://github.com/bsharper/atv-desktop-remote/releases/download/v#{version}/ATV.Remote-#{version}-#{arch}.dmg"
  name "ATV Remote"
  desc "Control Apple TV from your desktop"
  homepage "https://github.com/bsharper/atv-desktop-remote"

  # Upstream marks some releases that use a stable version format (v1.2.3) as
  # pre-release on GitHub.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "ATV Remote.app"

  zap trash: [
    "~/Library/Application Support/ATV Remote",
    "~/Library/Preferences/com.electron.atvDesktopRemote.plist",
    "~/Library/Saved Application State/com.electron.atvDesktopRemote.savedState",
  ]
end
