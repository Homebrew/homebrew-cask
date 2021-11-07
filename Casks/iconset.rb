cask "iconset" do
  version "2.0.0"
  sha256 "2dc15de9314b3291446e6f98adac67e52f0b430a024282b2f5be3b2512609ec4"

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
