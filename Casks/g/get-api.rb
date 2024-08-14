cask "get-api" do
  version "1.2.0"
  sha256 "3853d994af49e2e7c7e493a875a7338521c19a7d07716888959d047859e67cbe"

  url "https://files.getapi.io/macos/#{version}/Get%20API.dmg"
  name "GetAPI"
  desc "HTTP Client"
  homepage "https://getapi.io/"

  livecheck do
    url "https://getapi.com/release/osx/getapi_latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Get API.app"

  zap trash: [
    "~/Library/Application Support/com.getapi.GetAPI",
    "~/Library/Caches/com.getapi.GetAPI",
    "~/Library/Preferences/com.getapi.GetAPI.plist",
    "~/Library/Saved Application State/com.getapi.GetAPI.savedState",
  ]
end
