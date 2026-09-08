cask "get-api" do
  version "3.0.0"
  sha256 "7b91542f3173984301b97144fba2a3d0f6ab5884f3e42e00b55732ae125fd226"

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
