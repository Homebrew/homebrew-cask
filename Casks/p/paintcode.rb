cask "paintcode" do
  version "3.5.6"
  sha256 "41778f6b7eb25c9fa2203016fdf89843a69334d3aae261bd5b010230d0d21246"

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
