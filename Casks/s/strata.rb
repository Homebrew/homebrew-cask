cask "strata" do
  version "1.0.19"
  sha256 "63fea820950284f502c9e1f40d42d952cbcb8e029ca76d7943b7caf01be28685"

  url "https://stratamaccleaner.com/downloads/Strata-#{version}.dmg"
  name "Strata"
  desc "Disk space analyzer and cleaner"
  homepage "https://stratamaccleaner.com/"

  livecheck do
    url "https://stratamaccleaner.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Strata.app"

  zap trash: [
    "~/Library/Application Support/Strata",
    "~/Library/Caches/com.stratamaccleaner.strata",
    "~/Library/HTTPStorages/com.stratamaccleaner.strata",
    "~/Library/Preferences/com.stratamaccleaner.strata.plist",
    "~/Library/Saved Application State/com.stratamaccleaner.strata.savedState",
    "~/Library/WebKit/com.stratamaccleaner.strata",
  ]
end
