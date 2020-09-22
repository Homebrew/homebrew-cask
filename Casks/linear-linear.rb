cask "linear-linear" do
  version "1.2.9"
  sha256 "4f480fee1d0cb4a65c6f6066f9e555910a71a69ff7bc66137052e70a59143d4e"

  url "https://download.linear.app/darwin/Linear-darwin-x64-#{version}.zip"
  appcast "https://api.linear.app/update/darwin/0.0.0"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
