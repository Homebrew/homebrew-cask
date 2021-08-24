cask "iconset" do
  version "2.0.0"
  sha256 "da7082f87d83d44285e7984c766a51a204e9e552c57b35977fb894aa3580a10a"

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-mac.zip",
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
