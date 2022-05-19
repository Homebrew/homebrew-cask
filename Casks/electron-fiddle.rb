cask "electron-fiddle" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.29.0"

  if Hardware::CPU.intel?
    sha256 "21f6adb4fef19d2e4d08231f15a01724dbf610f6558b04d41a9193f9b07fc172"
  else
    sha256 "058dacb0eed6e76bdc05a4d903e415fae4f8ee963d671d60a0f330216ac16fe1"
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
