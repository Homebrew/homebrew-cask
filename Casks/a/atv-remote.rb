cask "atv-remote" do
  arch arm: "-arm64"

  version "1.4.2"
  sha256 arm:   "dfe04c2739a3d1dcc2837f4d45c306a56bfd7e30e9b5f219f0d926cceb0b4bf9",
         intel: "97427e9a3d9affb5a423fae643b78147e510bc90bd346b81928d0eaa4b1319ca"

  url "https://github.com/bsharper/atv-desktop-remote/releases/download/v.#{version}/ATV.Remote-#{version}#{arch}.dmg"
  name "ATV Remote"
  desc "Control Apple TV from your desktop"
  homepage "https://github.com/bsharper/atv-desktop-remote"

  # Upstream marks some releases that use a stable version format (v1.2.3) as
  # pre-release on GitHub.
  livecheck do
    url :url
    strategy :github_latest
  end

  app "ATV Remote.app"

  zap trash: [
    "~/Library/Application Support/ATV Remote",
    "~/Library/Preferences/com.electron.atvDesktopRemote.plist",
    "~/Library/Saved Application State/com.electron.atvDesktopRemote.savedState",
  ]
end
