cask "hey" do
  version "1.2.0"
  sha256 "6e507fd121b19c8098cdca8ba9b0d4423b5a9bb828f9a0af96577edd44470f4e"

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
