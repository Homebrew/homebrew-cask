cask "superhuman" do
  arch arm: "-arm64"

  version "33.0.13"
  sha256 arm:   "d8b2edcb96436f9c602ed6f7ec0ad402ea1872344583341baffe836d3e37327c",
         intel: "2b25a0f54a7ca6d902fbe6601e5b88367ff113338f077a522b66f9a6d9d5e9fa"

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
