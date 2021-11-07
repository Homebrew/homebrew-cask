cask "electron-fiddle" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.26.0"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  if Hardware::CPU.intel?
    sha256 "194e36302952db1234e3dc067f43ab2b3eef0fca46c3bf6353d081b7d1a06d34"
  else
    sha256 "edd7d9739b076f0c5145a02169c1b29018314fd93a6c368b1ca686d2d1ae25b2"
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
