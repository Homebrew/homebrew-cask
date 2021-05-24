cask "hightop" do
  version "1.2.11"
  sha256 "822582bedee41da9f7ab7e45a838b30d641b4459970a917c72e501edcfee20f3"

  url "https://hightop.app/downloads/HighTop#{version}.dmg"
  name "HighTop"
  desc "File access via the menu bar"
  homepage "https://hightop.app/"

  livecheck do
    url "https://hightop.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "HighTop.app"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HighTopLauncher",
    "~/Library/Application Support/HighTop+",
    "~/Library/Caches/com.knollsoft.HighTop",
    "~/Library/Containers/com.knollsoft.HighTopLauncher",
    "~/Library/Preferences/com.knollsoft.HighTop.plist",
    "~/Library/Saved Application State/com.knollsoft.HighTop.savedState",
  ]
end
