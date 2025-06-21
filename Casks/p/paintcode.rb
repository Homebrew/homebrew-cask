cask "paintcode" do
  version "3.5.9"
  sha256 "9ed3602e6b6269165c92d184d6f24f06a1a5471209a6b9df403aa167f4133ce7"

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
