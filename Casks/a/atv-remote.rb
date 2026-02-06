cask "atv-remote" do
  arch arm: "-arm64"

  version "2.0.4"
  sha256 arm:   "0ccec0abcde7d978f3b6889b03c13f5dd2dc6c7c7947a261e3fe9006d3c6e390",
         intel: "d7509c70c4d0a53703b65bfde2d2c7b5c8abedb543b7d284db5b7e0cad8bca86"

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
