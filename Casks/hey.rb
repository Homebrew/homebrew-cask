cask "hey" do
  version "1.2.3"
  sha256 "a33c9d6e78b9165c199618ecf073f3562685d55f0475cee901731b80420fd0bf"

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
