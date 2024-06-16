cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 :no_check

  url "https://desktop.getoutline.com/mac/dmg/#{arch}"
  name "Outline"
  desc "Knowledge management tool"
  homepage "https://getoutline.com/"

  livecheck do
    url :url
    regex(/outline\s?(\d+(?:\.\d+)*)/i)
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Outline.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.generaloutline.outline.sfl*",
    "~/Library/Application Support/Outline",
    "~/Library/Logs/Outline",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
  ]
end
