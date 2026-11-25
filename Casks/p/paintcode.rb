cask "paintcode" do
  version "3.6.3"
  sha256 "ae402878abb9f42f12906d18a87ae826cf1eda59067eed902c2cce6f3851d6b3"

  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version}.zip"
  name "PaintCode"
  desc "Turn vector drawings into program code"
  homepage "https://www.paintcodeapp.com/"

  livecheck do
    url "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "PaintCode.app"

  uninstall quit: "com.pixelcut.paintcode*"

  zap trash: [
    "~/Library/Application Scripts/com.pixelcut.paintcode*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pixelcut.paintcode*.sfl*",
    "~/Library/Application Support/com.pixelcut.paintcode*",
    "~/Library/Containers/com.pixelcut.paintcode*",
    "~/Library/HTTPStorages/com.pixelcut.paintcode*",
    "~/Library/Preferences/com.pixelcut.paintcode*.plist",
    "~/Library/Saved Application State/com.pixelcut.paintcode*.savedState",
  ]
end
