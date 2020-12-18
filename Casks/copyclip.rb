cask "copyclip" do
  version "2.9.98.3"
  sha256 :no_check

  url "https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379?format=zip",
      verified: "rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379"
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
