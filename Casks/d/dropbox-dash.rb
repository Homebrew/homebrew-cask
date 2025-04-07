cask "dropbox-dash" do
  version "3.63.9"
  sha256 "b58162d3ad2b043a4c42e8e8a4d98b9eb2368de624529edbc69663aac9eb1faf"

  url "https://edge.dropboxstatic.com/dbx-releng/products/dash-tesla/#{version}/mac.x86_64/Dropbox%20Dash-#{version}.dmg",
      verified: "edge.dropboxstatic.com/dbx-releng/products/dash-tesla/"
  name "Dropbox Dash"
  desc "Universal search tool"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url "https://client.dropbox.com/electron_builder/dash-tesla/update_check/stable-mac.yml?arch=x64&version=0"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Dropbox Dash.app"

  uninstall quit: "io.hypertools.Dropbox-Dash"

  zap trash: [
    "~/Library/Application Support/Dropbox Dash",
    "~/Library/Group Containers/com.dash",
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
  ]
end
