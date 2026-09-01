cask "ipaverse" do
  version "2.3.0"
  sha256 "c4a903c68a941b7a3b2472104c22e739decbd1ba6fdc677e12a6a59a6b84a117"

  url "https://github.com/bahattinkoc/ipaverse/releases/download/v#{version}/ipaverse.dmg"
  name "ipaverse"
  desc "Tool for downloading and managing iOS apps from the App Store"
  homepage "https://github.com/bahattinkoc/ipaverse"

  depends_on macos: :sonoma

  app "ipaverse.app"

  zap trash: [
    "~/Library/Application Support/ipaverse",
    "~/Library/Caches/com.ipaverse",
    "~/Library/Preferences/com.ipaverse.plist",
  ]
end
