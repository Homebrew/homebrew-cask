cask "superhuman" do
  arch arm: "-arm64"

  version "1041.0.69"
  sha256 arm:   "b978d98e9632b815b4933afc120232eb0ed7c6698a15f79bac326ddf0816042c",
         intel: "61f5537c62c8bf4b95db3955543694e7b95631850ee12c0d10be5ee11985af1d"

  url "https://storage.googleapis.com/download.superhuman.com/supertron-update/Superhuman-#{version}#{arch}-latest-mac.zip"
  name "Superhuman"
  desc "Email client"
  homepage "https://superhuman.com/"

  livecheck do
    url "https://storage.googleapis.com/download.superhuman.com/supertron-update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
