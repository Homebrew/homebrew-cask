cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "b2713f2d9e915003d261a5ca10622c4cfaa39a26a07662232f236100b42a0314",
         intel: "1287684d30963d81f8986ff86f55e100c90dbef849972102b16edbcecd90f76b"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

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
