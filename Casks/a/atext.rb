cask "atext" do
  version "3.19"
  sha256 :no_check

  url "https://www.trankynam.com/atext/downloads/aText.dmg"
  name "aText"
  desc "Tool to replace abbreviations while typing"
  homepage "https://www.trankynam.com/atext/"

  livecheck do
    url "https://www.trankynam.com/atext/changelog.mac"
    regex(/aText\s*v?(\d+(?:\.\d+)+)["< ]/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "aText.app"

  zap trash: [
    "~/Library/Application Scripts/com.trankynam.aText",
    "~/Library/Application Support/com.trankynam.aText",
    "~/Library/Caches/com.trankynam.aText",
    "~/Library/Containers/com.trankynam.aText",
    "~/Library/Cookies/com.trankynam.aText.binarycookies",
    "~/Library/HTTPStorages/com.trankynam.aText",
    "~/Library/Preferences/com.trankynam.aText.plist",
    "~/Library/Saved Application State/com.trankynam.aText.savedState",
    "~/Library/WebKit/com.trankynam.aText",
  ]
end
