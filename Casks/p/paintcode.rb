cask "paintcode" do
  version "3.6.2"
  sha256 "d420950ad28675040f23cfb5110784f9669d40d335aef2c816ea50ed9dc1c8a0"

  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version}.zip",
      verified: "pixelcut.com/"
  name "PaintCode"
  desc "Turn vector drawings into program code"
  homepage "https://www.paintcodeapp.com/"

  livecheck do
    url "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "PaintCode.app"

  zap trash: [
    "~/Library/Application Support/com.pixelcut.paintcode*",
    "~/Library/HTTPStorages/com.pixelcut.paintcode*",
    "~/Library/Preferences/com.pixelcut.paintcode*.plist",
    "~/Library/Saved Application State/com.pixelcut.paintcode*.savedState",
  ]
end
