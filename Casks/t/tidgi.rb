cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "299752879cc73039b64bb9299d6c0dfb353c55e9710b65eace2e5bea3d32c3bf",
         intel: "ef59f45c532596cf2ced091105fa7c3a7cdf45d8760d37ca64a817e64023e99f"

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
