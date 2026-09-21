cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.13"
  sha256 arm:   "3260dc9f62ee47e2cdc6b80d0dbb869a676411d54ddfee7528adb92e0e8cb3ce",
         intel: "9a0dddcf281b665bfb2716ba100e95e7a6922c7b497cc0481ce97e7c57d67108"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
