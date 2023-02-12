cask "rightfont" do
  version "6.4,3115"
  sha256 :no_check

  url "https://rightfontapp.com/update/rightfont.zip"
  name "RightFont"
  desc "Font manager that helps preview, install, sync and manage fonts"
  homepage "https://rightfontapp.com/"

  livecheck do
    url "https://rightfontapp.com/update/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RightFont.app"

  zap trash: [
        "~/Library/Application Support/RightFont",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rightfontapp.rightfont*.sfl2",
        "~/Library/Application Support/com.rightfontapp.RightFont*",
        "~/Library/Caches/com.rightfontapp.RightFont*",
        "~/Library/Logs/RightFont*",
        "~/Library/Preferences/com.rightfontapp.RightFont*.plist",
        "~/Library/WebKit/com.rightfontapp.RightFont*",
      ],
      rmdir: "~/RightFont"
end
