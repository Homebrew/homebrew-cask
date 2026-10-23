cask "dropbox-dash" do
  version "3.185.1"
  sha256 "6498daf717288c3d29da4a42937f9b9f5dea660a04685cde5e8296cbbd726ee4"

  url "https://edge.dropboxstatic.com/dbx-releng/products/dash-tesla/#{version}/mac.x86_64/Dropbox%20Dash-#{version}.dmg"
  name "Dropbox Dash"
  desc "Universal search tool"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url "https://client.dropbox.com/electron_builder/dash-tesla/update_check/stable-mac.yml?arch=x64&version=0"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Dropbox Dash.app"

  uninstall launchctl: [
              "com.dropbox.dropboxmacupdate.agent",
              "com.dropbox.dropboxmacupdate.xpcservice",
              "com.dropbox.DropboxUpdater.wake",
            ],
            quit:      "io.hypertools.Dropbox-Dash"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.hypertools.dropbox-dash.sfl*",
    "~/Library/Application Support/Dropbox Dash",
    "~/Library/Group Containers/com.dash",
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
  ]
end
