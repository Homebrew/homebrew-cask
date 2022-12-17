cask "iconset" do
  arch arm: "arm64-"

  version "2.3.3"
  sha256 arm:   "19d44e3e2e0dd5b1ca3b5dd0f64b068eb51af70691c2311da42a2be3466befc8",
         intel: "0a17c8a6f9fef86c9b5f6dee8c6a9dce858f4ea097e5c4e88edfe8bcc88a16f2"

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
