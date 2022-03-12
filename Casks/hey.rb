cask "hey" do
  version "1.2.4"
  sha256 "02d348cffea403852b42c426e41d71bbf9c7935247d1a468f1ecf3eda8e0b698"

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
