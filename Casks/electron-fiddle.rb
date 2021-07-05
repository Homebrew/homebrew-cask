cask "electron-fiddle" do
  version "0.24.0"

  if Hardware::CPU.intel?
    sha256 "e8a76b3b6bc828ef4e2aaf953310fba2e6f76709aaa0e23a877112c83624e9cf"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  else
    sha256 "6fac8cae4ebc156966b561f437bbfc0af785b15345c2af9eb24a1fde9db4027e"

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
