cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.3"
  sha256 arm:   "dd20814f404850484721db5af932b1ef7e5335b4208a9e8e42421703096f049c",
         intel: "bad2af93086131b56289965556ab52ffa2d1fafbe2262fa2dbcc96e2acbf8eaa"

  url "https://hey.com/desktop/HEY-#{version}#{arch}-mac.zip"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
