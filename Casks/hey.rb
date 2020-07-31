cask "hey" do
  version "1.0.10"
  sha256 "89d6b086e8988ce46355ca5f1ba9860969eb865e99614dbd13ce9bd712dc3847"

  # hey-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}.dmg"
  appcast "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
  name "Hey"
  homepage "https://hey.com/"

  app "Hey.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
