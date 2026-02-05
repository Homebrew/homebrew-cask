cask "atv-remote" do
  arch arm: "-arm64"

  version "2.0.1"
  sha256 arm:   "738d92b3b67e8c26bae8f364fe89e1350ae7d61d46e582678afa11f28707b46f",
         intel: "fffe7851736fcce9176159bfe3c7ffaeb32b562ff0941361b812e425103927c7"

  url "https://github.com/bsharper/atv-desktop-remote/releases/download/v#{version}/ATV.Remote-#{version}#{arch}.dmg"
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
