cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"

  on_intel do
    sha256 "c7f34ec69be8f06c97360314950549e2692f6b94f2fe3849f73f58f5efc8fa2f"
  end
  on_arm do
    sha256 "dfad9d45a9bd8464b542130d94753ae9b1b559664e569193e7a6a7b525805697"
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
