cask "get-api" do
  version "1.3.1"
  sha256 "c0b4e60aa997df528a3aad6b8812a1a24dca15396a5b66bfc3fc2296eae8a36f"

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
