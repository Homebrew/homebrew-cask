cask "channel-works" do
  version "12.2.6"
  sha256 "d22d0fb70649654175a1e32b0a3aefb9221f6929edfab06110c277e5865e4ebb"

  url "https://github.com/channel-io/channel-works-macos/releases/download/v#{version}/Channel.Works-darwin-universal-#{version}.zip"
  name "Channel Works"
  desc "AI Business OS for customer support, analytics, collaboration, and marketing"
  homepage "https://channel.io/"

  livecheck do
    url "https://raw.githubusercontent.com/channel-io/channel-works-macos/main/desktop-releases.json"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Channel Works.app"

  zap trash: [
    "~/Library/Application Support/Channel Works",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zoyi.channel.desk.osx.sfl*",
    "~/Library/Containers/com.zoyi.channel.desk.osx",
    "~/Library/Group Containers/8278Q64QFC.com.zoyi.channel.desk.osx",
    "~/Library/Logs/Channel Works",
    "~/Library/Preferences/com.zoyi.channel.desk.osx.plist",
  ]
end
