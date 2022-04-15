cask "electron-fiddle" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.28.1"

  if Hardware::CPU.intel?
    sha256 "b227098653fc98cfae1fb90e1a3be0836795df6e09c2ef8fb04d180c43141026"
  else
    sha256 "8e22339b6148346f38d5cfaaf6e1a8f583540312bca5a613a0bddcf410f489ce"
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
