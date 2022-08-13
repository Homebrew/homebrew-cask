cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.29.2"

  if Hardware::CPU.intel?
    sha256 "5cc91b5c2f30125b04e720a690fd670a10cd4c91b653e7b1d14895701e636076"
  else
    sha256 "8a5b77213f134fcf034fe1953e1c4a6800dd14258d3285c2cae7ff6a0028ecf9"
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
