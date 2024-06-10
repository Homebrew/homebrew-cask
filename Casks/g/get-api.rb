cask "get-api" do
  version "1.1.0"
  sha256 "727f362817b3bcf7180162a896c7e09257942ad9f166bacd74d2e1aa3e9cccfa"

  url "https://files.getapi.io/macos/#{version}/Get%20API.dmg"
  name "GetAPI"
  desc "HTTP Client"
  homepage "https://getapi.io/"

  livecheck do
    url "https://getapi.io/release/osx/getapi_latest"
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
