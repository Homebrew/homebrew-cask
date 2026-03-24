cask "touchswitcher" do
  version "1.4.7"
  sha256 "91ec5381e015bb27cbab3325d10e4e838b0cd66c619ac77a28bcb4c39c14e65c"

  url "https://hazeover.com/touchswitcher/TouchSwitcher-#{version}.txz"
  name "TouchSwitcher"
  desc "Use the Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
