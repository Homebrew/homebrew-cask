cask "hey" do
  version "1.0.11"
  sha256 "dd543fbc2b83fb1182cbaf133122bd17ea8e0ff97c12d76fd7b33a5aa1e06e31"

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
