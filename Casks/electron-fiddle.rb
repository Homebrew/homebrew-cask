cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.4"
  sha256 arm:   "3c869356ae4404ca71a5da19340442a7f2e3f6d5324b5fdd285e098cd8b1a187",
         intel: "4f23be98e97318158af04d1c33da0c39c5a38865a4b9d5cbbdc2cd08cf492848"

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
