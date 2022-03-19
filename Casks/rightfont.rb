cask "rightfont" do
  version "5.9.3,2859"
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
  depends_on macos: ">= :yosemite"

  app "RightFont #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/RightFont",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rightfontapp.rightfont#{version.major}.sfl2",
    "~/Library/Application Support/com.rightfontapp.RightFont#{version.major}",
    "~/Library/Caches/com.rightfontapp.RightFont#{version.major}",
    "~/Library/Logs/RightFont #{version.major}",
    "~/Library/Preferences/com.rightfontapp.RightFont#{version.major}.plist",
    "~/Library/WebKit/com.rightfontapp.RightFont#{version.major}",
    "~/RightFont",
  ]
end
