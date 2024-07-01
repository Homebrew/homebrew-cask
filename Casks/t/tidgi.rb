cask "tidgi" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "bdd1e1a04aa87849e1436e94a41571080d1d8ec546a247fc9e6421f7bae20c76",
         intel: "c8db997db9f8cc0ec91b993bfe312b7be22a853db9f19d5a61663360ec6ea278"

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
