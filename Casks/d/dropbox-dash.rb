cask "dropbox-dash" do
  version "3.104.9"
  sha256 "363efc09463c6e1642d908d6d10f81413b77f004ae8285747a3548fdb002e65e"

  url "https://edge.dropboxstatic.com/dbx-releng/products/dash-tesla/#{version}/mac.x86_64/Dropbox%20Dash-#{version}.dmg",
      verified: "edge.dropboxstatic.com/dbx-releng/products/dash-tesla/"
  name "Dropbox Dash"
  desc "Universal search tool"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url "https://client.dropbox.com/electron_builder/dash-tesla/update_check/stable-mac.yml?arch=x64&version=0"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Dropbox Dash.app"

  uninstall quit: "io.hypertools.Dropbox-Dash"

  zap trash: [
    "~/Library/Application Support/Dropbox Dash",
    "~/Library/Group Containers/com.dash",
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
  ]
end
