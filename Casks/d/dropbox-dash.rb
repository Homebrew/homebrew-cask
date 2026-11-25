cask "dropbox-dash" do
  version "3.189.17"
  sha256 "4a959e40aa1144fe3e925cacae893bfcd27950adb5e996c106991cc1886d998d"

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
