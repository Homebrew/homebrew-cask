cask "electron-fiddle" do
  version "0.25.2"

  if Hardware::CPU.intel?
    sha256 "e220f4764ebf3e17f5989e228ae0b550e5315e0f3bd90af457009a92ef4072dd"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  else
    sha256 "599d63a6a9eb154a938971670afd4c053eda2d145f3f552192f39ed22e89bda1"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-arm64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  end

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
