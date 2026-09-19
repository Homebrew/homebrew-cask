cask "muse" do
  version "2.0"
  sha256 :no_check

  url "https://muse.ai/api/hatch/app-download/mac"
  name "Muse"
  desc "AI assistant for managing tasks, projects, and long-term goals"
  homepage "https://muse.ai/"

  livecheck do
    url "https://www.facebook.com/endo/release/appcast.xml?channel=production"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Muse.app"

  uninstall quit: "com.meta.endo"

  zap trash: [
    "~/Library/Application Support/com.meta.endo",
    "~/Library/Caches/com.meta.endo",
    "~/Library/HTTPStorages/com.meta.endo",
    "~/Library/Preferences/com.meta.endo.plist",
    "~/Library/WebKit/com.meta.endo",
  ]
end
