cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.32.8"
  sha256 arm:   "08a47ec8f939948b272492cdd40e235978a1e62cddeb490338c107f705d51539",
         intel: "3fef02144c7932ec6726c3ac592feb963c933faa063daacbd3e854f37f61d048"

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
