cask "hey" do
  version "1.1.0"
  sha256 "87eff282d69d160e4232a3b7678b40c6c81196b6c7c9c74c6934b8618f6c585c"

  # hey-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}.dmg"
  appcast "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
  name "Hey"
  homepage "https://hey.com/"

  auto_updates true

  app "Hey.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
