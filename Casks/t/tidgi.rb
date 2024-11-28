cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "ca98bcd0baaed033be99599c201a3f152897eba464da96ab3bc9fcb75a46965d",
         intel: "14d7a8d85fa3f1b31cf39f1a2478fbd966d3bc01e3429e631ba4d27833b01f0b"

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
