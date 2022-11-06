cask "iconset" do
  arch arm: "arm64-"

  version "2.3.0"
  sha256 arm:   "0177edd3bc3ca85699e987693c07c378b49ac8f545351e997f46e7e00c069dec",
         intel: "71d593d40fbe89e45630c2140a0ad61c0db3e1611237f53f62fcc97f7baca7d7"

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
