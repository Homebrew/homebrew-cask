cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.1"
  sha256 arm:   "4f43c106c12f0d3ba16ee88953803f769bc4b477f0ecacbca6c4cbcd4667417b",
         intel: "8a5cd2a39ccedd61dcf2c4f9be5047777f075e7d6e8559cffeacf215c9a434e9"

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
