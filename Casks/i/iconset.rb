cask "iconset" do
  arch arm: "arm64-"

  version "2.5.3"
  sha256 arm:   "b5859c85bb1b911fc14b7e063a4ab582a40b8b036c18f7f3e5a95c1ea0bc2fb5",
         intel: "7db15ea4d7c88272d18b7dfee941b7b9769321e3d90dcdf5cfa5a59197f7d1a4"

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-#{arch}mac.zip"
  name "Iconset"
  desc "Organise icon sets and packs in one place"
  homepage "https://iconset.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Iconset.app"

  zap trash: [
    "~/Library/Application Support/Iconset",
    "~/Library/Preferences/io.iconset.app.plist",
    "~/Library/Saved Application State/io.iconset.app.savedState",
  ]
end
