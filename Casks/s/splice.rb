cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.2"
  sha256 arm:   "f39fa49a24340881bc54a5ec1cd130e952de434db0f467101ab054157a8000b2",
         intel: "6d8a1f13c00ec04a02b6190ecefbab82389fa90d7ee10d02f49a2ffbfe874705"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
