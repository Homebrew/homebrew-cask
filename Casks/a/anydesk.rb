cask "anydesk" do
  version "9.6.1"
  sha256 :no_check

  url "https://download.anydesk.com/anydesk.dmg"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/"

  livecheck do
    url "https://download.anydesk.com/changelog.txt"
    regex(/v?(\d+(?:\.\d+)+)\s+\(macOS\)/i)
  end

  app "AnyDesk.app"

  uninstall quit:   [
              "com.philandro.anydesk",
              "com.philandro.anydesk.Frontend",
              "com.philandro.anydesk.Helper",
              "com.philandro.anydesk.service",
            ],
            delete: [
              "/Library/LaunchAgents/com.philandro.anydesk.Frontend.plist",
              "/Library/LaunchAgents/com.philandro.anydesk.Hub.plist",
              "/Library/LaunchDaemons/com.philandro.anydesk.Helper.plist",
              "/Library/LaunchDaemons/com.philandro.anydesk.service.plist",
              "/Library/PrivilegedHelperTools/com.philandro.anydesk.Helper",
            ]

  zap trash: [
    "~/.anydesk",
    "~/Library/Preferences/com.philandro.anydesk.plist",
  ]
end
