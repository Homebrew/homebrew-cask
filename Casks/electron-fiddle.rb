cask "electron-fiddle" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.27.3"

  if Hardware::CPU.intel?
    sha256 "1ba3fff4c943b3d52bfe05634c793ca1f080140379a1eedf72217989cb677401"
  else
    sha256 "b52acc0c3320af542fb6c93fcd6aec615df6bda61010f4e91d23aac76e44d1dc"
  end

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
