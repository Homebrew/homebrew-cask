cask "paintcode" do
  version "3.5.7"
  sha256 "2f1bf208e8171bcf05d494115aac948aa2e9bf94eee3fe18933e7c994de7928c"

  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version}.zip",
      verified: "pixelcut.com/"
  name "PaintCode"
  desc "Turn vector drawings into program code"
  homepage "https://www.paintcodeapp.com/"

  livecheck do
    url "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "PaintCode.app"

  zap trash: [
    "~/Library/Application Support/com.pixelcut.paintcode*",
    "~/Library/HTTPStorages/com.pixelcut.paintcode*",
    "~/Library/Preferences/com.pixelcut.paintcode*.plist",
    "~/Library/Saved Application State/com.pixelcut.paintcode*.savedState",
  ]
end
