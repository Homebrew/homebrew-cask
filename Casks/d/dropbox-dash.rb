cask "dropbox-dash" do
  version "3.127.64"
  sha256 "fdbe4f632e845e93b5682ff326e5399df2dc5164b027f0749f1d9cf8e3255dd8"

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
