cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "16fb74f28d9656b9d1b84fcb0f2ba83a1ee71c481b0b49dd748b434bb2c3e9e6",
         intel: "982b2c7f5c56ccb95d7d0e41851b40313fc44941b7d771088784c70956b695c1"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version.split("-").first}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

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
