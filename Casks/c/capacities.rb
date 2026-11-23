cask "capacities" do
  arch arm: "-arm64"

  version "1.74.1"
  sha256 arm:   "71a7e4295eaede0443c8b5ce95df21c4af63dfea19798e01e9055134ccfba3ed",
         intel: "6c6fd4003531b0c74b9f5a0789c53ba01913f0a955818557207d04abd1da3eef"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://2vks4.upcloudobjects.com/capacities-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.capacities.app.sfl*",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
