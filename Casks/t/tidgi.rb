cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.12.2"
  sha256 arm:   "598fdabbce8a9ba9db84a85ecff5458274840064d02c2d4310aca9ec4dd79c71",
         intel: "9ac6095fac2017d7f8464e9a56c3b7aee2403f4fec1d78ee15ed374ce44cc8b9"

  url "https://github.com/tiddly-gittly/TidGi-Desktop/releases/download/v#{version}/TidGi-darwin-#{arch}-#{version.split("-").first}.zip"
  name "TidGi"
  desc "Personal knowledge-base app"
  homepage "https://github.com/tiddly-gittly/TidGi-Desktop"

  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+.*)$/i)
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
