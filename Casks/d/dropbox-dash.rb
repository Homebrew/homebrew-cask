cask "dropbox-dash" do
  version "2.97.0"
  sha256 "ebcac5200a8167b4884dd870576dfc8d7feeadb8059505f89246970d85d13a71"

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
