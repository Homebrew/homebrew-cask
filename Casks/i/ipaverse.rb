cask "ipaverse" do
  version "2.2.0"
  sha256 "7dc3b941beb07f8546db011e6c7848d9f7397bef6dae627e2f2d91704265143d"

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
