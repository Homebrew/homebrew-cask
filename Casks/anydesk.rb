cask "anydesk" do
  version "6.2.0"
  sha256 :no_check

  url "https://download.anydesk.com/anydesk.dmg"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/"

  livecheck do
    url "https://anydesk.com/en/downloads/mac-os"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)\s*</i)
  end

  app "AnyDesk.app"

  uninstall delete: [
    "/Library/LaunchAgents/com.philandro.anydesk.Frontend.plist",
    "/Library/LaunchDaemons/com.philandro.anydesk.Helper.plist",
    "/Library/LaunchDaemons/com.philandro.anydesk.service.plist",
    "/Library/PrivilegedHelperTools/com.philandro.anydesk.Helper",
  ]

  zap trash: [
    "~/.anydesk",
    "~/Library/Preferences/com.philandro.anydesk.plist",
  ]
end
