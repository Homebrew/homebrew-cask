cask "get-api" do
  version "1.2.6"
  sha256 "d551df167bd712f8c7f77d306b4fe2daa79f44cb6ca22d9b68c8d1e9d1dc32a1"

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
