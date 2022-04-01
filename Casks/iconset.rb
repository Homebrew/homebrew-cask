cask "iconset" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "2.1.0"

  if Hardware::CPU.intel?
    sha256 "66c63730a0771de1ac63299f3fd1c55f7aa75f4e103954d59363a8fcd4c3859d"
  else
    sha256 "8dfef7dd8597a88f1a10b3306bd9ebb45ed8895d6dc5fda530a2b746368d32e3"
  end

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-#{arch}mac.zip",
      verified: "github.com/IconsetApp/iconset/"
  name "Iconset"
  desc "Organize icon sets and packs in one place"
  homepage "https://iconset.io/"

  app "Iconset.app"

  zap trash: [
    "~/Library/Application Support/Iconset",
    "~/Library/Preferences/io.iconset.app.plist",
    "~/Library/Saved Application State/io.iconset.app.savedState",
  ]
end
