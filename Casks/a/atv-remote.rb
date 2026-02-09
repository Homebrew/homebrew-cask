cask "atv-remote" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "8a8e33e607eb3aba7841aedbc96d29995485c8001edae801462b66a191e7ce9b",
         intel: "1fa2fa4fbd533de17c3b054de46a634984855172128dd91536c648c5eeb3dbe6"

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
