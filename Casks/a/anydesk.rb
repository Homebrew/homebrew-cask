cask "anydesk" do
  version "9.6.1"
  sha256 :no_check

  url "https://download.anydesk.com/anydesk.dmg"
  name "AnyDesk"
  desc "Allows connection to a computer remotely"
  homepage "https://anydesk.com/"

  # The upstream download page links to the unversioned dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://anydesk.com/en/downloads/mac-os
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
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
              "/Library/LaunchDaemons/com.philandro.anydesk.Helper.plist",
              "/Library/LaunchDaemons/com.philandro.anydesk.service.plist",
              "/Library/PrivilegedHelperTools/com.philandro.anydesk.Helper",
            ]

  zap trash: [
    "~/.anydesk",
    "~/Library/Preferences/com.philandro.anydesk.plist",
  ]
end
