cask "iconset" do
  arch arm: "arm64-"

  version "2.3.1"
  sha256 arm:   "932bbcd352fb6159fb30dc85a85c6766c95b6484b780e966dba27faafec79220",
         intel: "88214cd49e21c37ac7be61405e851829905487ba6be191eda90fa005e9708844"

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
