cask "superhuman" do
  arch arm: "-arm64"

  version "1041.0.51"
  sha256 arm:   "2659a786b097adabb7fc7cce076b7cc94f47a7e4b2a80d6d53c979f1d508a0c6",
         intel: "2c3d8f9c4db456fa3da080a06530e50a177e5117c6065d4d4c6627e777c2cc8e"

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
