cask "dropbox-dash" do
  version "2.77.1"
  sha256 "e148468fbae575d0934f7fab29bfa5abde3f1f37990dc1816c65e122b2fb0c88"

  url "https://dash-releases.s3.amazonaws.com/Dropbox%20Dash-#{version}.dmg",
      verified: "dash-releases.s3.amazonaws.com/"
  name "Dropbox Dash"
  desc "Search all your apps. All your tabs. All in one place"
  homepage "https://www.dropbox.com/dash"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Dropbox Dash.app"

  uninstall quit: "io.hypertools.Dropbox-Dash"

  zap trash: [
    "~/Library/Preferences/io.hypertools.Dropbox-Dash.plist",
    "~/Library/Application Support/Dropbox Dash",
  ]
end
