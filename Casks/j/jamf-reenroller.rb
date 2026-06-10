cask "jamf-reenroller" do
  version "5.9.0"
  sha256 "ab86e3fd2e4c0b56198ce0e7aa121c4bb92ba111cd21e5e419b6f80d953c1618"

  url "https://github.com/jamf/ReEnroller/releases/download/v#{version}/ReEnroller.zip"
  name "ReEnroller"
  desc "Re-enrolls devices into a management server"
  homepage "https://github.com/jamf/ReEnroller"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "ReEnroller.app"

  zap trash: [
    "~/Library/Caches/com.jamf.pse.ReEnroller",
    "~/Library/HTTPStorages/com.jamf.pse.ReEnroller",
    "~/Library/Preferences/com.jamf.pse.ReEnroller.plist",
    "~/Library/Saved Application State/com.jamf.pse.ReEnroller.savedState",
  ]
end
