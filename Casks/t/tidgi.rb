cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "dbc86b6ef8c131ed5bfa1259ca95e8b7a2659f6f3bb25b836342ef84f5d9c444",
         intel: "b70e57d328b925ed2393e68fe9e1a890eb4ffec194999531a7c299daf32d66b5"

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
