cask "electron-fiddle" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.27.2"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  if Hardware::CPU.intel?
    sha256 "d5dc8c4ff806ff919a75985ecffae6b056a99ed953308ed0bcc523831ca96905"
  else
    sha256 "a8c9e377dfa53fb3c6c218b3bedb9196e75ca482c662f3537b9ba3eb8a4cf1e8"
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
