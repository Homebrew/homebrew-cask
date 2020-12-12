cask "handbrake" do
  version "1.3.3"
  sha256 "500cb924de7a3cc3a95cac4e69f303fc0623d3524fe59ac4ee4160ff43d56af6"

  # github.com/HandBrake/HandBrake/ was verified as official when first introduced to the cask
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrake-#{version}.dmg"
  appcast "https://github.com/HandBrake/HandBrake/releases.atom"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  auto_updates true

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/HandBrake",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
