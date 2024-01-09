cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "387babbdb122d4557f30f618af56431f848ce615a3d183f0cc82786747fb46be",
         intel: "53a7c428f67cebef44f93e7ffb98193b57bf6d60ba370eb5d8518f7b8089b75a"

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
    "~/Library/Caches/com.tidgi.app.ShipIt",
    "~/Library/Caches/com.tidgi.app",
    "~/Library/Preferences/com.tidgi.app.plist",
    "~/Library/Preferences/com.tidgi.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
