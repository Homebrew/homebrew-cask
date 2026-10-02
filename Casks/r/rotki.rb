cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.44.1"
  sha256 arm:   "9bf55798159eab9fb44aa50ba17cd408cf9af8185a982c7ac5c55097cd004cf0",
         intel: "e933615015487038b56eb93c4df8e969e6a7cc1367661e69b5e31499abf68124"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
