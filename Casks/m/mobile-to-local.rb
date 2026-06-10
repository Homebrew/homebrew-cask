cask "mobile-to-local" do
  version "4.0.1"
  sha256 "329ee1a8bfba7fde36bde80165ca04c1d50bbb503c0f473762233de6600fe9e6"

  url "https://github.com/BIG-RAT/mobile_to_local/releases/download/v#{version}/Mobile.to.Local.zip"
  name "Mobile to Local"
  desc "Converts mobile accounts to local user accounts"
  homepage "https://github.com/BIG-RAT/mobile_to_local"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Mobile to Local.app"

  zap trash: [
    "~/Library/Caches/pse.jamf.mobile-to-local",
    "~/Library/HTTPStorages/pse.jamf.mobile-to-local",
    "~/Library/Preferences/pse.jamf.mobile-to-local.plist",
    "~/Library/Saved Application State/pse.jamf.mobile-to-local.savedState",
  ]
end
