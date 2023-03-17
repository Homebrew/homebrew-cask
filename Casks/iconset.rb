cask "iconset" do
  arch arm: "arm64-"

  version "2.4.0"
  sha256 arm:   "00eb6b91ccce50b39d35d44db423fcc62fc95a83a23479ecefcecaa4af31dc2e",
         intel: "6a7a19b97ca5a0f0588f8e47307cccb881c72a2a9fa5ad8798dd8374b99c7f67"

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-#{arch}mac.zip",
      verified: "github.com/IconsetApp/iconset/"
  name "Iconset"
  desc "Organize icon sets and packs in one place"
  homepage "https://iconset.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Iconset.app"

  zap trash: [
    "~/Library/Application Support/Iconset",
    "~/Library/Preferences/io.iconset.app.plist",
    "~/Library/Saved Application State/io.iconset.app.savedState",
  ]
end
