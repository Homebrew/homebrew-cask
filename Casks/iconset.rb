cask "iconset" do
  version "1.3.11"
  sha256 "33b86a855464f16dcbbd9fcde1cbb2eeb4a20d7aecc1b68393a82d54bb1bbac4"

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-mac.zip",
      verified: "github.com/IconsetApp/iconset/"
  appcast "https://github.com/IconsetApp/iconset/releases.atom"
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
