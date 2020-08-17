cask "copyclip" do
  version "2.9.98.3"
  sha256 "907948736d8872ac831cd92832553e0d4a46fb4f74e9e1f14a3f4fcfbbd2bb21"

  # rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379"
  name "CopyClip"
  homepage "https://fiplab.com/apps/copyclip-for-mac"

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
    "~/Library/Application Scripts/com.fiplab.copyclip*helper",
    "~/Library/Application Scripts/com.fiplab.copyclip*",
    "~/Library/Containers/com.fiplab.copyclip*helper",
    "~/Library/Containers/com.fiplab.copyclip*",
  ]
end
