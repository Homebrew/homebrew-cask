cask "dropbox-dash" do
  version "2.77.1"
  sha256 "e148468fbae575d0934f7fab29bfa5abde3f1f37990dc1816c65e122b2fb0c88"

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
