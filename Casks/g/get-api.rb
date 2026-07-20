cask "get-api" do
  version "2.1.3"
  sha256 "5487101967443f6c33f3ffadb71f471d832c3cf3042ffdd33a7ba4900a67f860"

  url "https://files.getapi.io/macos/#{version}/Get%20API.dmg"
  name "GetAPI"
  desc "HTTP Client"
  homepage "https://getapi.io/"

  livecheck do
    url "https://getapi.com/release/osx/getapi_latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Get API.app"

  zap trash: [
    "~/Library/Application Support/com.getapi.GetAPI",
    "~/Library/Caches/com.getapi.GetAPI",
    "~/Library/Preferences/com.getapi.GetAPI.plist",
    "~/Library/Saved Application State/com.getapi.GetAPI.savedState",
  ]
end
