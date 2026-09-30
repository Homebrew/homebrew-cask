cask "dropbox-dash" do
  version "3.181.38"
  sha256 "3daeaa93f30307af1c2d8c3a563fe9e8ce226c9dcc4d56e598c9aea6c0dd96bb"

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
    "~/Library/Application Support/Dropbox Dash",
    "~/Library/Group Containers/com.dash",
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
  ]
end
