cask "electron-fiddle" do
  version "0.23.2"

  if Hardware::CPU.intel?
    sha256 "091531c6d2f312b53d09eb9ade794dace7f9413de07eeb64bb8256aea1f11e59"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  else
    sha256 "0b46b112773913968b2217021be2ab9a764ecce7dfe972c6042d15d768d2011d"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-arm64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  end

  name "Electron Fiddle"
  desc "Easiest way to get started with Electron"
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
