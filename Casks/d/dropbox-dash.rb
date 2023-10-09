cask "dropbox-dash" do
  version "2.83.2"
  sha256 "088902a48256bc9b27102f028c7ee0af91dae47ef9922148f888c5fbe661e01d"

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
