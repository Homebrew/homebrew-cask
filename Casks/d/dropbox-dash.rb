cask "dropbox-dash" do
  version "2.103.0"
  sha256 "c049ac46b6f37d8182dd316910fc338bce26b0816cd713f1c2a7a881e53f7f04"

  url "https://dash-releases.s3.amazonaws.com/Dropbox%20Dash-#{version}.dmg",
      verified: "dash-releases.s3.amazonaws.com/"
  name "Dropbox Dash"
  desc "Universal search tool"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url "https://dash-releases.s3.amazonaws.com/latest-mac.yml"
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
