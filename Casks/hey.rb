cask "hey" do
  arch arm: "-arm64"

  version "1.2.8"
  sha256 arm:   "46fd104a6a317a0a9bd390aefd420c9c5b308f5082808ffc135f0d095c4d61f1",
         intel: "0628316192697c223bdd6362fad860415f5613014e31041e5c2571a726d587ca"

  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}#{arch}-mac.zip",
      verified: "hey-desktop.s3.amazonaws.com/"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
