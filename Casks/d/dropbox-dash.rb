cask "dropbox-dash" do
  version "3.174.23"
  sha256 "732483eca97edd66fdb4ef15a2a39ddd7fad6927d903d07cbf83154898a0f740"

  url "https://edge.dropboxstatic.com/dbx-releng/products/dash-tesla/#{version}/mac.x86_64/Dropbox%20Dash-#{version}.dmg"
  name "Dropbox Dash"
  desc "Universal search tool"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url "https://client.dropbox.com/electron_builder/dash-tesla/update_check/stable-mac.yml?arch=x64&version=0"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Dropbox Dash.app"

  uninstall launchctl: [
              "com.dropbox.dropboxmacupdate.agent",
              "com.dropbox.dropboxmacupdate.xpcservice",
              "com.dropbox.DropboxUpdater.wake",
            ],
            quit:      "io.hypertools.Dropbox-Dash"

  zap trash: [
    "~/Library/Application Support/Dropbox Dash",
    "~/Library/Group Containers/com.dash",
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
  ]
end
