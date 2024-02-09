cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "0dfb30cadc2823a1b0eeacd07754b78cbcd6b6a374ab69d3debe9d82b5501b38",
         intel: "c1bbbbda665d5368997a5377a47d02897a39dc7b54c4f4f452cac0dc788aa00e"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TidGi.app"

  zap trash: [
    "~/Library/Application Support/TidGi",
    "~/Library/Caches/com.tidgi.app",
    "~/Library/Caches/com.tidgi.app.ShipIt",
    "~/Library/Preferences/com.tidgi.app.plist",
    "~/Library/Preferences/com.tidgi.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
