cask "touchswitcher" do
  version "1.4.6"
  sha256 "a3c22a09507dd668cd664be4dff2ef334907b3688eae7c02801405b890baf9dd"

  url "https://hazeover.com/touchswitcher/TouchSwitcher-#{version}.txz"
  name "TouchSwitcher"
  desc "Use the Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
