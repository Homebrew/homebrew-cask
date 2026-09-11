cask "atv-remote" do
  arch arm: "-arm64"

  version "2.2.1"
  sha256 arm:   "0f3cfca6a7cc68261ff302f7b5163cfd9b8b6cc6c30417580c0d537a35c84629",
         intel: "20092f59e500298c17d83c6aec03998455362a1e61c0f97116537d4e46e442bf"

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

  depends_on macos: :monterey

  app "ATV Remote.app"

  uninstall quit: "com.electron.atvMacRemote"

  zap trash: [
    "~/Library/Application Support/ATV Remote",
    "~/Library/Preferences/com.electron.atvDesktopRemote.plist",
    "~/Library/Saved Application State/com.electron.atvDesktopRemote.savedState",
  ]
end
