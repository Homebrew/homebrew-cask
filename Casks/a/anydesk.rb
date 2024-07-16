cask "anydesk" do
  version "8.1.1"
  sha256 :no_check

  url "https://download.anydesk.com/anydesk.dmg"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/"

  livecheck do
    url "https://anydesk.com/en/downloads/mac-os"
    regex(/>v(\d+(?:\.\d+)+)[\s<]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnyDesk.app"

  uninstall quit:   [
              "com.philandro.anydesk",
              "com.philandro.anydesk.Frontend",
              "com.philandro.anydesk.Helper",
              "com.philandro.anydesk.service",
            ],
            delete: [
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
