cask "rightfont" do
  version "9.2"
  sha256 :no_check

  url "https://rightfontapp.com/update/rightfont.zip"
  name "RightFont"
  desc "Font manager that helps preview, install, sync and manage fonts"
  homepage "https://rightfontapp.com/"

  livecheck do
    url "https://rightfontapp.com/update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "RightFont.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rightfontapp.rightfont*.sfl*",
        "~/Library/Application Support/com.rightfontapp.RightFont*",
        "~/Library/Application Support/RightFont",
        "~/Library/Caches/com.rightfontapp.RightFont*",
        "~/Library/Logs/RightFont*",
        "~/Library/Preferences/com.rightfontapp.RightFont*.plist",
        "~/Library/WebKit/com.rightfontapp.RightFont*",
      ],
      rmdir: "~/RightFont"
end
