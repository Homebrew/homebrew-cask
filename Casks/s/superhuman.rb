cask "superhuman" do
  arch arm: "-arm64"

  version "33.0.7"
  sha256 arm:   "7eea43964cb7bd98bedb5a8bcbdd9da8c2a8dff17452c9f87e93c9bd2acfe52b",
         intel: "904e91e7baf481907e95449ee9ca71cc8e250633952b01031d97ac4c0de510b5"

  url "https://storage.googleapis.com/download.superhuman.com/supertron-update/Superhuman-#{version}#{arch}-latest-mac.zip",
      verified: "storage.googleapis.com/download.superhuman.com/supertron-update/"
  name "Superhuman"
  desc "Email client"
  homepage "https://superhuman.com/"

  livecheck do
    url "https://storage.googleapis.com/download.superhuman.com/supertron-update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Superhuman.app"

  zap trash: [
    "~/Library/Application Support/Superhuman",
    "~/Library/Caches/com.superhuman.electron*",
    "~/Library/Caches/Superhuman",
    "~/Library/Logs/Superhuman",
    "~/Library/Preferences/com.superhuman.electron.*",
    "~/Library/Preferences/com.superhuman.mail.plist",
    "~/Library/Saved Application State/com.superhuman.electron.savedState",
  ]
end
