cask "hey" do
  version "1.2.2"
  sha256 "0c0553576874e6d72c81890066f9631c3be9a191328f46fd9843bbea5beefa95"

  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}.dmg",
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
