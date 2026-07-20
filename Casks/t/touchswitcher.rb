cask "touchswitcher" do
  version "1.4.8"
  sha256 "78aa139d5b9e0ac16b340019d05cb897929c6e0a57733394496748e3724d5775"

  url "https://hazeover.com/touchswitcher/TouchSwitcher-#{version}.txz"
  name "TouchSwitcher"
  desc "Use the Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
