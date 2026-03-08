cask "desktoputility" do
  version "6.1.4"
  sha256 :no_check

  url "https://sweetpproductions.com/products/desktoputility/DesktopUtility.dmg"
  name "DesktopUtility"
  desc "Quick access to useful system tasks"
  homepage "https://sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/desktoputility/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "DesktopUtility.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.DesktopUtility",
    "~/Library/Containers/com.sweetpproductions.DesktopUtility",
  ]
end
