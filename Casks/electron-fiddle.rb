cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.9"
  sha256 arm:   "a74bf7acb632ddc20d6d4a44c6d8ddf069365e59c4911517412a088f83c628e8",
         intel: "de5585326582bfd96868d0c051f60e2bab08e12351e5a1394c82276dc30e2020"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Preferences/com.electron.fiddle*.plist",
  ]
end
