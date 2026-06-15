cask "ipaverse" do
  version "2.1.0"
  sha256 "565632403077a06e6c15a9296cdd1dfc8f94bd85e42077836d92350bd4bb9c27"

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
